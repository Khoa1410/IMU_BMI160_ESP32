#include <cmath>
#include <fstream>
#include <iostream>
#include <sstream>
#include <string>
#include <vector>

// Include Fusion library (C headers wrapped for C++)
extern "C" {
#include "library/Fusion-1.2.11/Fusion/Fusion.h"
}

// BMI160 sensor scaling factors
// Gyroscope: 2000 deg/s range => 16.4 LSB/(deg/s)
constexpr float GYRO_SENSITIVITY = 32.8f;
// Accelerometer: ±2g range => 16384 LSB/g
constexpr float ACCEL_SENSITIVITY = 4096.0f;

// Sample period (100ms = 10 Hz based on the data timestamps)
constexpr float SAMPLE_PERIOD = 0.1f;

struct SensorData {
  std::string time;
  float gyro_x, gyro_y, gyro_z;
  float accel_x, accel_y, accel_z;
};

// Parse timestamp string like "[0:00:01.100000]" to seconds
float parseTimestamp(const std::string &timeStr) {
  // Remove brackets
  std::string clean = timeStr.substr(1, timeStr.length() - 2);

  int hours = 0, minutes = 0;
  float seconds = 0.0f;

  // Parse format H:MM:SS or H:MM:SS.ffffff
  sscanf(clean.c_str(), "%d:%d:%f", &hours, &minutes, &seconds);

  return hours * 3600.0f + minutes * 60.0f + seconds;
}

int main() {
  // Open input file
  std::ifstream inputFile("bmi160.csv");
  if (!inputFile.is_open()) {
    std::cerr << "Error: Could not open bmi160.csv" << std::endl;
    return 1;
  }

  // Open output file
  std::ofstream outputFile("fusioned.csv");
  if (!outputFile.is_open()) {
    std::cerr << "Error: Could not create fusioned.csv" << std::endl;
    return 1;
  }

  // Write CSV header
  outputFile << "time,roll,pitch,yaw,qw,qx,qy,qz,linear_accel_x,linear_accel_y,"
                "linear_accel_z"
             << std::endl;

  // Initialize Fusion AHRS
  FusionAhrs ahrs;
  FusionAhrsInitialise(&ahrs);

  // Configure AHRS settings
  FusionAhrsSettings settings = {
      .convention = FusionConventionNwu,
      .gain = 0.5f,
      .gyroscopeRange = 2000.0f, // BMI160 gyroscope range
      .accelerationRejection = 10.0f,
      .magneticRejection = 0.0f, // No magnetometer
      .recoveryTriggerPeriod =
          5 * (int)(1.0f / SAMPLE_PERIOD) // 5 seconds worth of samples
  };
  FusionAhrsSetSettings(&ahrs, &settings);

  // Initialize gyroscope offset correction
  FusionOffset offset;
  FusionOffsetInitialise(&offset, (int)(1.0f / SAMPLE_PERIOD));

  // Read and process data
  std::string line;
  bool firstLine = true;
  int sampleCount = 0;
  float prevTime = 0.0f;

  while (std::getline(inputFile, line)) {
    // Skip header line
    if (firstLine) {
      firstLine = false;
      continue;
    }

    // Parse CSV line
    std::stringstream ss(line);
    std::string token;
    std::vector<std::string> tokens;

    while (std::getline(ss, token, ',')) {
      // Trim whitespace
      size_t start = token.find_first_not_of(" \t");
      size_t end = token.find_last_not_of(" \t");
      if (start != std::string::npos && end != std::string::npos) {
        tokens.push_back(token.substr(start, end - start + 1));
      } else {
        tokens.push_back("");
      }
    }

    if (tokens.size() < 7) {
      continue;
    }

    // Parse sensor values
    std::string timeStr = tokens[0];
    float raw_gyro_x = std::stof(tokens[1]);
    float raw_gyro_y = std::stof(tokens[2]);
    float raw_gyro_z = std::stof(tokens[3]);
    float raw_accel_x = std::stof(tokens[4]);
    float raw_accel_y = std::stof(tokens[5]);
    float raw_accel_z = std::stof(tokens[6]);

    // Convert raw values to physical units
    // Gyroscope: raw -> degrees per second
    float gyro_x = raw_gyro_x / GYRO_SENSITIVITY;
    float gyro_y = raw_gyro_y / GYRO_SENSITIVITY;
    float gyro_z = raw_gyro_z / GYRO_SENSITIVITY;

    // Accelerometer: raw -> g
    float accel_x = raw_accel_x / ACCEL_SENSITIVITY;
    float accel_y = raw_accel_y / ACCEL_SENSITIVITY;
    float accel_z = raw_accel_z / ACCEL_SENSITIVITY;

    // Calculate delta time
    float currentTime = parseTimestamp(timeStr);
    float deltaTime =
        (sampleCount == 0) ? SAMPLE_PERIOD : (currentTime - prevTime);
    if (deltaTime <= 0.0f) {
      deltaTime = SAMPLE_PERIOD;
    }
    prevTime = currentTime;

    // Create Fusion vectors
    FusionVector gyroscope = {.array = {gyro_x, gyro_y, gyro_z}};
    FusionVector accelerometer = {.array = {accel_x, accel_y, accel_z}};

    // Apply gyroscope offset correction
    gyroscope = FusionOffsetUpdate(&offset, gyroscope);

    // Update AHRS algorithm (no magnetometer)
    FusionAhrsUpdateNoMagnetometer(&ahrs, gyroscope, accelerometer, deltaTime);

    // Get outputs
    FusionQuaternion quaternion = FusionAhrsGetQuaternion(&ahrs);
    FusionEuler euler = FusionEulerFrom(quaternion);
    FusionVector linearAccel = FusionAhrsGetLinearAcceleration(&ahrs);

    // Write to output CSV
    outputFile << timeStr << "," << euler.angle.roll << "," << euler.angle.pitch
               << "," << euler.angle.yaw << "," << quaternion.element.w << ","
               << quaternion.element.x << "," << quaternion.element.y << ","
               << quaternion.element.z << "," << linearAccel.axis.x << ","
               << linearAccel.axis.y << "," << linearAccel.axis.z << std::endl;

    sampleCount++;
  }

  inputFile.close();
  outputFile.close();

  std::cout << "Fusion completed! Processed " << sampleCount << " samples."
            << std::endl;
  std::cout << "Output saved to fusioned.csv" << std::endl;

  return 0;
}
