#include "led_control.h"
#include <Arduino.h>

// Define LED pins
const int LED_PIN_POS_Y = 23;    // Turn on if Accel Y >= 0.5g  gpio_num23
const int LED_PIN_NEG_Y = 17;    // Turn on if Accel Y <= -0.5g gpio_num4
const int LED_PIN_NEG_JERK = 18; // Turn on if Jerk Y <= -200g/s gpio_num18

void init_leds() {
  pinMode(LED_PIN_POS_Y, OUTPUT);
  pinMode(LED_PIN_NEG_Y, OUTPUT);
  pinMode(LED_PIN_NEG_JERK, OUTPUT);

  // Ensure LEDs are off initially
  digitalWrite(LED_PIN_POS_Y, LOW);
  digitalWrite(LED_PIN_NEG_Y, LOW);
  digitalWrite(LED_PIN_NEG_JERK, LOW);
}

void update_leds(float accel_y, float jerk_y) {
  // Condition 1: Accel Y >= 0.5g
  if (accel_y >= 0.1f) {
    digitalWrite(LED_PIN_POS_Y, HIGH);
  } else {
    digitalWrite(LED_PIN_POS_Y, LOW);
  }

  // Condition 2: Accel Y <= -0.5g
  if (accel_y <= -0.1f) {
    digitalWrite(LED_PIN_NEG_Y, HIGH);
  } else {
    digitalWrite(LED_PIN_NEG_Y, LOW);
  }

  // Condition 3: Jerk Y <= -200 g/s
  if (jerk_y <= -10.0f) {
    digitalWrite(LED_PIN_NEG_JERK, HIGH);
  } else {
    digitalWrite(LED_PIN_NEG_JERK, LOW);
  }
}
