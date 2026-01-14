#include <cmath>
#include <fstream>
#include <iomanip>
#include <iostream>
#include <sstream>
#include <string>
#include <vector>

// EKF Library
#include "library/ekf_accel/ekf.h"

struct IMUData {
  std::string original_line;
  double ax, ay, az;
};

// EKF Callback Functions (3D Constant Value Model)
// State X = [ax, ay, az]^T

bool F_func(Matrix &F, const Matrix &X, const Matrix &U) {
  // F is Identity 3x3
  F.vSetIdentity();
  return true;
}

bool Predict_func(Matrix &X_Next, const Matrix &X, const Matrix &U) {
  // X_k = X_{k-1}
  X_Next = X;
  return true;
}

bool H_func(Matrix &H, const Matrix &X, const Matrix &U) {
  // H is Identity 3x3 (Direct observation)
  H.vSetIdentity();
  return true;
}

bool Measure_func(Matrix &Y, const Matrix &X, const Matrix &U) {
  // Y = X
  Y = X;
  return true;
}

int main() {
  // Initialize EKF
  // State: [ax, ay, az]
  Matrix XInit(3, 1);
  XInit.vSetToZero(); // Initialize with 0

  // Covariances
  Matrix P(3, 3);
  P.vSetDiag(100.0); // Initial uncertainty

  Matrix Q(3, 3);
  Q.vSetDiag(0.01); // Process noise (smoothness factor)

  Matrix R(3, 3);
  R.vSetDiag(0.1); // Measurement noise

  // 3D EKF
  EKF ekf(XInit, P, Q, R, Predict_func, Measure_func, F_func, H_func);

  std::ifstream inputFile("fusioned.csv");
  if (!inputFile.is_open()) {
    std::cerr << "Error: Could not open fusioned.csv" << std::endl;
    return 1;
  }

  std::ofstream outputFile("fusioned_ekf.csv");
  if (!outputFile.is_open()) {
    std::cerr << "Error: Could not create fusioned_ekf.csv" << std::endl;
    return 1;
  }

  std::string line;
  std::string header;
  std::vector<IMUData> dataList;

  // Read Header
  if (std::getline(inputFile, header)) {
    outputFile << header << ",ekf_accel_x,ekf_accel_y,ekf_accel_z" << std::endl;
  } else {
    std::cerr << "Error: Empty input file" << std::endl;
    return 1;
  }

  // Read Data
  // Column indices: linear_accel_x (8), linear_accel_y (9), linear_accel_z (10)
  while (std::getline(inputFile, line)) {
    std::stringstream ss(line);
    std::string token;
    std::vector<std::string> tokens;

    while (std::getline(ss, token, ',')) {
      tokens.push_back(token);
    }

    if (tokens.size() >= 11) {
      IMUData d;
      d.original_line = line;
      try {
        d.ax = std::stod(tokens[8]);
        d.ay = std::stod(tokens[9]);
        d.az = std::stod(tokens[10]);
        dataList.push_back(d);
      } catch (...) {
        continue;
      }
    }
  }
  inputFile.close();
  std::cout << "Read " << dataList.size() << " samples." << std::endl;

  Matrix Y(3, 1);
  Matrix U(3, 1); // Dummy input

  int processedCount = 0;
  for (const auto &data : dataList) {
    // Prepare Measurement
    Y[0][0] = data.ax;
    Y[1][0] = data.ay;
    Y[2][0] = data.az;

    // EKF Update
    if (ekf.bUpdate(Y, U)) {
      Matrix X_Est = ekf.GetX();
      outputFile << data.original_line << "," << X_Est[0][0] << ","
                 << X_Est[1][0] << "," << X_Est[2][0] << std::endl;
      processedCount++;
    } else {
      std::cerr << "EKF Update Failed at sample " << processedCount
                << std::endl;
      outputFile << data.original_line << "," << data.ax << "," << data.ay
                 << "," << data.az << std::endl; // Fallback to raw
    }
  }

  outputFile.close();
  std::cout << "Processed " << processedCount << " samples." << std::endl;
  std::cout << "Output saved to fusioned_ekf.csv" << std::endl;

  return 0;
}
