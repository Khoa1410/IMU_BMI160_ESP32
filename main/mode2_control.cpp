#include "mode2_control.h"
#include <Arduino.h>
#include <cmath>

// Define LED pins for Mode 2
const int MODE2_LED_TILT = 23;      // Turn on if sensor is tilted (quaternion)
const int MODE2_LED_ACCEL_POS = 17; // Turn on if accel magnitude >= 0.5g
const int MODE2_LED_ACCEL_NEG =
    18; // Turn on if accel magnitude <= -0.5g (deceleration)

// Tilt threshold - if roll or pitch exceeds this angle (degrees), LED turns on
const float TILT_THRESHOLD_DEG = 15.0f;

void init_mode2_leds() {
  pinMode(MODE2_LED_TILT, OUTPUT);
  pinMode(MODE2_LED_ACCEL_POS, OUTPUT);
  pinMode(MODE2_LED_ACCEL_NEG, OUTPUT);

  // Ensure LEDs are off initially
  digitalWrite(MODE2_LED_TILT, LOW);
  digitalWrite(MODE2_LED_ACCEL_POS, LOW);
  digitalWrite(MODE2_LED_ACCEL_NEG, LOW);
}

void update_mode2_leds(float qw, float qx, float qy, float qz, float accel_x,
                       float accel_y, float accel_z) {
  // ===== LED 1 (GPIO 23): Tilt detection using quaternion =====
  // Convert quaternion to roll and pitch angles
  // Roll (rotation around X-axis)
  float sinr_cosp = 2.0f * (qw * qx + qy * qz);
  float cosr_cosp = 1.0f - 2.0f * (qx * qx + qy * qy);
  float roll_rad = atan2f(sinr_cosp, cosr_cosp);

  // Pitch (rotation around Y-axis)
  float sinp = 2.0f * (qw * qy - qz * qx);
  float pitch_rad;
  if (fabsf(sinp) >= 1.0f) {
    pitch_rad = copysignf(M_PI / 2.0f, sinp); // Use 90 degrees if out of range
  } else {
    pitch_rad = asinf(sinp);
  }

  // Convert to degrees
  float roll_deg = roll_rad * 180.0f / M_PI;
  float pitch_deg = pitch_rad * 180.0f / M_PI;

  // Check if tilted beyond threshold
  bool is_tilted = (fabsf(roll_deg) > TILT_THRESHOLD_DEG) ||
                   (fabsf(pitch_deg) > TILT_THRESHOLD_DEG);

  if (is_tilted) {
    digitalWrite(MODE2_LED_TILT, HIGH);
  } else {
    digitalWrite(MODE2_LED_TILT, LOW);
  }

  // ===== LED 2 (GPIO 17): Positive acceleration magnitude =====
  // Check if any axis has acceleration >= 0.5g
  bool accel_positive =
      (accel_x >= 0.5f) || (accel_y >= 0.5f) || (accel_z >= 0.5f);

  if (accel_positive) {
    digitalWrite(MODE2_LED_ACCEL_POS, HIGH);
  } else {
    digitalWrite(MODE2_LED_ACCEL_POS, LOW);
  }

  // ===== LED 3 (GPIO 18): Negative acceleration magnitude =====
  // Check if any axis has acceleration <= -0.5g
  bool accel_negative =
      (accel_x <= -0.5f) || (accel_y <= -0.5f) || (accel_z <= -0.5f);

  if (accel_negative) {
    digitalWrite(MODE2_LED_ACCEL_NEG, HIGH);
  } else {
    digitalWrite(MODE2_LED_ACCEL_NEG, LOW);
  }
}
