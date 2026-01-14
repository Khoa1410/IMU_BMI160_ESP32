/**
 * @file jerk_calc.cpp
 * @brief Calculate jerk from linear acceleration using Savitzky-Golay filter
 *
 * This program reads fusioned.csv which contains linear acceleration data,
 * applies a Savitzky-Golay 1st derivative filter to calculate jerk,
 * and outputs the result to fusioned_jerk.csv.
 */

#include <fstream>
#include <gram_savitzky_golay/gram_savitzky_golay.h>
#include <iomanip>
#include <iostream>
#include <sstream>
#include <string>
#include <vector>

struct DataPoint {
  std::string original_line;
  double ax, ay, az;
};

int main() {
  // Configuration
  const unsigned m = 5;  // Window size = 2*m + 1 = 11
  const unsigned n = 3;  // Polynomial order
  const int t = 0;       // Evaluate at center (smoothing/derivative)
  const int s = 1;       // 1st derivative
  const double dt = 0.1; // 100ms sample period

  // Initialize SG Filter
  gram_sg::SavitzkyGolayFilter filter(m, t, n, s, dt);

  std::ifstream inputFile("fusioned.csv");
  if (!inputFile.is_open()) {
    std::cerr << "Error: Could not open fusioned.csv" << std::endl;
    return 1;
  }

  std::ofstream outputFile("fusioned_jerk.csv");
  if (!outputFile.is_open()) {
    std::cerr << "Error: Could not create fusioned_jerk.csv" << std::endl;
    return 1;
  }

  std::string line;
  std::vector<DataPoint> allData;
  std::string header;

  // Read Header
  if (std::getline(inputFile, header)) {
    outputFile << header << ",jerk_x,jerk_y,jerk_z" << std::endl;
  } else {
    std::cerr << "Error: Empty input file" << std::endl;
    return 1;
  }

  // Read Data
  while (std::getline(inputFile, line)) {
    std::stringstream ss(line);
    std::string token;
    std::vector<std::string> tokens;

    while (std::getline(ss, token, ',')) {
      tokens.push_back(token);
    }

    if (tokens.size() >= 11) {
      DataPoint p;
      p.original_line = line;
      try {
        p.ax = std::stod(tokens[8]);
        p.ay = std::stod(tokens[9]);
        p.az = std::stod(tokens[10]);
        allData.push_back(p);
      } catch (...) {
        continue;
      }
    }
  }
  inputFile.close();

  std::cout << "Read " << allData.size() << " samples." << std::endl;

  std::vector<double> window_ax, window_ay, window_az;
  window_ax.resize(2 * m + 1);
  window_ay.resize(2 * m + 1);
  window_az.resize(2 * m + 1);

  int processedCount = 0;

  for (size_t i = 0; i < allData.size(); ++i) {
    double jerk_x = 0.0;
    double jerk_y = 0.0;
    double jerk_z = 0.0;

    // Check if we have enough neighbors to center the window
    bool canCalculate = (i >= m) && (i + m < allData.size());

    if (canCalculate) {
      // Fill window
      for (unsigned j = 0; j < 2 * m + 1; ++j) {
        int dataIdx = i - m + j;
        window_ax[j] = allData[dataIdx].ax;
        window_ay[j] = allData[dataIdx].ay;
        window_az[j] = allData[dataIdx].az;
      }

      jerk_x = filter.filter(window_ax);
      jerk_y = filter.filter(window_ay);
      jerk_z = filter.filter(window_az);
    } else {

      jerk_x = 0.0;
      jerk_y = 0.0;
      jerk_z = 0.0;
    }

    outputFile << allData[i].original_line << "," << jerk_x << "," << jerk_y
               << "," << jerk_z << std::endl;

    processedCount++;
  }

  outputFile.close();
  std::cout << "Calculated jerk for " << processedCount << " samples."
            << std::endl;
  std::cout << "Output saved to fusioned_jerk.csv" << std::endl;

  return 0;
}
