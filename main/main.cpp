#include <Arduino.h>
#include <BMI160Gen.h>
#include <Wire.h>

// Fusion AHRS library
extern "C" {
#include "Fusion.h"
}

// EKF library
#include "ekf.h"

// LED Control
#include "led_control.h"
#include "mode2_control.h"

// Mode switch pin (GPIO 4)
// HIGH (not connected) = Mode 1, LOW (connected to GND) = Mode 2
const int MODE_SWITCH_PIN = 4;

const int i2c_addr = 0x69;
const int sda_pin = 21;
const int scl_pin = 22;

// BMI160 sensor scaling factors
// Gyroscope: 1000 deg/s range => 32.8 LSB/(deg/s)
constexpr float GYRO_SENSITIVITY = 32.8f;
// Accelerometer: ±8g range => 4096 LSB/g
constexpr float ACCEL_SENSITIVITY = 4096.0f;

// Sample period (10ms = 100 Hz)
constexpr float SAMPLE_PERIOD = 0.01f;

unsigned long startTime = 0;

// Fusion AHRS objects
FusionAhrs ahrs;
FusionOffset offset;

// ===== EKF Setup =====
// EKF callback functions for 3D constant value model
// State X = [ax, ay, az]^T

bool F_func(Matrix &F, const Matrix &X, const Matrix &U) {
  F.vSetIdentity(); // F = I
  return true;
}

bool Predict_func(Matrix &X_Next, const Matrix &X, const Matrix &U) {
  X_Next = X; // X_k = X_{k-1} (constant model)
  return true;
}

bool H_func(Matrix &H, const Matrix &X, const Matrix &U) {
  H.vSetIdentity(); // H = I (direct observation)
  return true;
}

bool Measure_func(Matrix &Y, const Matrix &X, const Matrix &U) {
  Y = X; // Y = X
  return true;
}

// EKF instance (will be initialized in setup)
Matrix XInit(3, 1);
Matrix P_ekf(3, 3);
Matrix Q_ekf(3, 3);
Matrix R_ekf(3, 3);
EKF *ekf = nullptr;

// ===== Savitzky-Golay Jerk Calculation =====
// Window size m=2 -> window = 2*2+1 = 5 samples
// Precomputed SG 1st derivative coefficients for m=2, n=2, s=1
// Coefficients: [-0.2, -0.1, 0, 0.1, 0.2] / dt
constexpr int SG_M = 2;
constexpr int SG_WINDOW = 2 * SG_M + 1; // 5 samples
const float SG_COEFFS[SG_WINDOW] = {-2.0f, -1.0f, 0.0f, 1.0f,
                                    2.0f}; // Will divide by 10*dt

// Circular buffer for linear acceleration history
float accel_history_x[SG_WINDOW] = {0};
float accel_history_y[SG_WINDOW] = {0};
float accel_history_z[SG_WINDOW] = {0};
int accel_history_idx = 0;
int accel_history_count = 0;

void setup() {
  Serial.begin(921600); // Keep high baud rate for performance
  while (!Serial)
    ;

  Wire.begin(sda_pin, scl_pin);

  if (!BMI160.begin(BMI160GenClass::I2C_MODE, i2c_addr)) {
    Serial.println("BMI160 initialization failed!");
    while (1)
      ;
  }

  // Set sensor ranges
  BMI160.setAccelerometerRange(8); // ±8g
  BMI160.setGyroRange(1000);       // 1000 deg/s

  // Initialize Fusion AHRS
  FusionAhrsInitialise(&ahrs);

  FusionAhrsSettings settings = {.convention = FusionConventionNwu,
                                 .gain = 0.5f,
                                 .gyroscopeRange = 1000.0f,
                                 .accelerationRejection = 10.0f,
                                 .magneticRejection = 0.0f,
                                 .recoveryTriggerPeriod =
                                     (int)(5.0f / SAMPLE_PERIOD)};
  FusionAhrsSetSettings(&ahrs, &settings);
  FusionOffsetInitialise(&offset, (int)(1.0f / SAMPLE_PERIOD));

  // Initialize EKF
  XInit.vSetToZero();
  P_ekf.vSetDiag(100.0); // Initial uncertainty
  Q_ekf.vSetDiag(0.02);  // Process noise (Lower = smoother, trusts model more)
  R_ekf.vSetDiag(
      0.08); // Measurement noise (Higher = smoother, filters noise more)
  ekf = new EKF(XInit, P_ekf, Q_ekf, R_ekf, Predict_func, Measure_func, F_func,
                H_func);

  startTime = millis();

  // Initialize mode switch pin with internal pull-up
  pinMode(MODE_SWITCH_PIN, INPUT_PULLUP);

  // Initialize LEDs for both modes
  init_leds();
  init_mode2_leds();

  Serial.println("Full Filter Pipeline Initialized.");
}

void loop() {
  static unsigned long lastUpdate = 0;
  unsigned long currentMillis = millis();

  if (currentMillis - lastUpdate >= 10) { // 100Hz
    lastUpdate = currentMillis;

    int gx_raw, gy_raw, gz_raw;
    int ax_raw, ay_raw, az_raw;

    BMI160.readGyro(gx_raw, gy_raw, gz_raw);
    BMI160.readAccelerometer(ax_raw, ay_raw, az_raw);

    // Convert to physical units
    float gyro_x = (float)gx_raw / GYRO_SENSITIVITY;
    float gyro_y = (float)gy_raw / GYRO_SENSITIVITY;
    float gyro_z = (float)gz_raw / GYRO_SENSITIVITY;

    float accel_x = (float)ax_raw / ACCEL_SENSITIVITY;
    float accel_y = (float)ay_raw / ACCEL_SENSITIVITY;
    float accel_z = (float)az_raw / ACCEL_SENSITIVITY;

    // ===== STEP 1: Fusion AHRS =====
    FusionVector gyroscope = {.array = {gyro_x, gyro_y, gyro_z}};
    FusionVector accelerometer = {.array = {accel_x, accel_y, accel_z}};

    gyroscope = FusionOffsetUpdate(&offset, gyroscope);
    FusionAhrsUpdateNoMagnetometer(&ahrs, gyroscope, accelerometer,
                                   SAMPLE_PERIOD);

    FusionQuaternion quaternion = FusionAhrsGetQuaternion(&ahrs);
    FusionVector linearAccel = FusionAhrsGetLinearAcceleration(&ahrs);

    float lax = linearAccel.axis.x;
    float lay = linearAccel.axis.y;
    float laz = linearAccel.axis.z;

    // ===== STEP 2: Store in history buffer for Jerk =====
    accel_history_x[accel_history_idx] = lax;
    accel_history_y[accel_history_idx] = lay;
    accel_history_z[accel_history_idx] = laz;
    accel_history_idx = (accel_history_idx + 1) % SG_WINDOW;
    if (accel_history_count < SG_WINDOW)
      accel_history_count++;

    // ===== STEP 3: Savitzky-Golay Jerk Calculation =====
    float jerk_x = 0, jerk_y = 0, jerk_z = 0;
    if (accel_history_count == SG_WINDOW) {
      // Apply SG filter (1st derivative)
      for (int i = 0; i < SG_WINDOW; i++) {
        int idx = (accel_history_idx + i) % SG_WINDOW; // Oldest to newest
        jerk_x += SG_COEFFS[i] * accel_history_x[idx];
        jerk_y += SG_COEFFS[i] * accel_history_y[idx];
        jerk_z += SG_COEFFS[i] * accel_history_z[idx];
      }
      // Normalize by 10*dt (denominator for SG derivative)
      float norm_factor = 10.0f * SAMPLE_PERIOD;
      jerk_x /= norm_factor;
      jerk_y /= norm_factor;
      jerk_z /= norm_factor;
    }

    // ===== STEP 4: EKF Smoothing on Linear Acceleration =====
    Matrix Y(3, 1);
    Matrix U(3, 1); // Dummy input
    Y[0][0] = lax;
    Y[1][0] = lay;
    Y[2][0] = laz;

    float ekf_ax = lax, ekf_ay = lay, ekf_az = laz; // Fallback
    if (ekf->bUpdate(Y, U)) {
      Matrix X_Est = ekf->GetX();
      ekf_ax = X_Est[0][0];
      ekf_ay = X_Est[1][0];
      ekf_az = X_Est[2][0];
    }

    // ===== Output (Compact D: format for real-time) =====
    // Format: D:ax,ay,az,lax,lay,laz,eax,eay,eaz,jx,jy,jz,qw,qx,qy,qz
    Serial.printf("D:%d,%d,%d,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%."
                  "2f,%.2f,%.2f,%.2f\r\n",
                  ax_raw, ay_raw, az_raw, lax, lay, laz, ekf_ax, ekf_ay, ekf_az,
                  jerk_x, jerk_y, jerk_z, quaternion.element.w,
                  quaternion.element.x, quaternion.element.y,
                  quaternion.element.z);

    // Read mode switch pin
    int mode = digitalRead(MODE_SWITCH_PIN);

    if (mode == HIGH) {
      // Mode 1: Use led_control (Y-axis acceleration and jerk thresholds)
      update_leds(ekf_ay, jerk_y);
    } else {
      // Mode 2: Use mode2_control (tilt detection and acceleration magnitude)
      update_mode2_leds(quaternion.element.w, quaternion.element.x,
                        quaternion.element.y, quaternion.element.z, ekf_ax,
                        ekf_ay, ekf_az);
    }
  }
}

extern "C" void app_main() {
  initArduino();
  setup();
  while (true) {
    loop();
  }
}
