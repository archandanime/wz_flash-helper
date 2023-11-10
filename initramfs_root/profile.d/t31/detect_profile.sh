#!/bin/sh
#
# Description: Detect the current profile by analyzing uboot strings
#

function detect_profile() {
	msg
	if grep -q "demo_wcv3.bin" /boot_backup.img.strings ; then # Stock Cam v3
		msg "Camera is currently on Cam v3 stock firmware"
		current_profile="stock"
	
	elif grep -q "recovery_wcpv2.bin" /boot_backup.img.strings ; then # Stock Cam Pan v2
		msg "Camera is currently on Cam Pan v2 stock firmware"
		current_profile="stock"
	
	elif grep -q "factory_t31_0P3N1PC_kernel" /boot_backup.img.strings ; then
		msg "Camera is currently on OpenIPC firmware"
		current_profile="openipc"
	else
		msg_color red "Unable to detect current firmware"
		return 1
	fi
}

detect_profile || return 1
