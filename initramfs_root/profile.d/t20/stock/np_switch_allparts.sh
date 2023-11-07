#!/bin/sh
#
# Description: This script returns "write" task for all queried partitions
#

function get_np_partoperation() {
# Description: Return task will be done with queried partition when switching profile
# Syntax: get_next_profile_switch <partname>
	case "$1" in
		"boot")
			echo -n "write" ;;
		"kernel")
			echo -n "write" ;;
		"root")
			echo -n "write" ;;
		"driver")
			echo -n "write" ;;
		"appfs")
			echo -n "write" ;;
		"backupk")
			echo -n "write" ;;
		"backupd")
			echo -n "write" ;;
		"backupa")
			echo -n "write" ;;
		"config")
			echo -n "write" ;;
		"para")
			echo -n "write" ;;
	esac
}
