#ifndef LED_CONTROL_H
#define LED_CONTROL_H

// Initialize LED pins as outputs
void init_leds();

// Update LED status based on accelerometer (g) and jerk (g/s)
// accel_y: Y-axis acceleration in g
// jerk_y: Y-axis jerk in g/s
void update_leds(float accel_y, float jerk_y);

#endif // LED_CONTROL_H
