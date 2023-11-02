#!/bin/sh




detect_model() {
	openipc_wifi_driver=$(fw_printenv wlandev | sed 's/wlandev//')

	case $openipc_wifi_driver in
		"l8189ftv-t31-wyze-v3")
			model="v3"
			;;
			
		"atbm603x-t31-wyze-v3")
			model="v3"
			;;

		"atbm603x-t31-wyze-v3")
			model="v3c"
			;;

		"atbm603x-t31-wyze-pan-v2")
			model="pan_v2"
			;;
		
		*)
			msg "Unable to detect camera model by reading uboot wlandev variable"
			;;
	esac
}

detect_model || return 1
