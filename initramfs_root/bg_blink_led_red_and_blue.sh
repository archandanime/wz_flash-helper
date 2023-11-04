#!/bin/sh
#
# Description: Blink red and blue LEDs every second
#

function reset_leds() {
	echo 1 > /sys/class/gpio/gpio$red_led_gpio/value
	echo 1 > /sys/class/gpio/gpio$blue_led_gpio/value
}

function blink_led_red_and_blue() {
	local chip_family=$(ipcinfo-mips32 --family)
	source /leds_gpio.d/$chip_family.sh
	
	reset_leds
	
	while true; do
		echo 0 > /sys/class/gpio/gpio$red_led_gpio/value
		sleep 1
		echo 1 > /sys/class/gpio/gpio$red_led_gpio/value
		sleep 1

		echo 0 > /sys/class/gpio/gpio$blue_led_gpio/value
		sleep 1
		echo 1 > /sys/class/gpio/gpio$blue_led_gpio/value
		sleep 1
	done
}

blink_led_red_and_blue
