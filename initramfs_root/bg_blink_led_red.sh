#!/bin/sh
#
# Description: Blink the red LED every second
#

source /leds_gpio.d/leds_gpio.sh

while true; do
	echo 0 > /sys/class/gpio/gpio$red_led_pin/value
	sleep 1
	echo 1 > /sys/class/gpio/gpio$red_led_pin/value
	sleep 1
done
