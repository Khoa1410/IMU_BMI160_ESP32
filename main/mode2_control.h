#ifndef MODE2_CONTROL_H
#define MODE2_CONTROL_H

// Initialize Mode 2 LED pins as outputs
void init_mode2_leds();

// Update Mode 2 LED status based on quaternion (tilt) and acceleration
// magnitude qw, qx, qy, qz: quaternion components for tilt detection accel_x,
// accel_y, accel_z: acceleration in g
void update_mode2_leds(float qw, float qx, float qy, float qz, float accel_x,
                       float accel_y, float accel_z);

#endif // MODE2_CONTROL_H
