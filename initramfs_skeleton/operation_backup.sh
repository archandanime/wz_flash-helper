#!/bin/sh
#
#  ____             _                                             _   _             
# | __ )  __ _  ___| | ___   _ _ __     ___  _ __   ___ _ __ __ _| |_(_) ___  _ __  
# |  _ \ / _` |/ __| |/ / | | | '_ \   / _ \| '_ \ / _ \ '__/ _` | __| |/ _ \| '_ \ 
# | |_) | (_| | (__|   <| |_| | |_) | | (_) | |_) |  __/ | | (_| | |_| | (_) | | | |
# |____/ \__,_|\___|_|\_\\__,_| .__/   \___/| .__/ \___|_|  \__,_|\__|_|\___/|_| |_|
#                             |_|           |_|                                     



function backup_entire_flash() {
# Description: Dump the entire flash to a file
	local partname="entire_flash"
	local partmtd="$all_partmtd"
	local outfile="$current_profile_backup_path/$current_profile_backup_allparts_filename"
	
	backup_partition $partname $partmtd $outfile || { msg "Backup $partname partition to $outfile failed" ; return 1 ; }
}

function backup_parts() {
# Description: Create images for all partitions of the current profile
	for partname in $current_profile_all_partname_list; do
		local partmtd=$(get_current_profile_partmtd $partname)
		local outfile_name=$(get_current_profile_partimg $partname)
		local outfile="$current_profile_backup_path/$outfile_name"
		
		backup_partition $partname $partmtd $outfile || { msg "Backup $partname partition to $outfile failed" ; return 1 ; }
	done
}

function archive_parts() {
# Description: Create .tar.gz archive for partition files on current profile
	for partname_archive in $current_profile_archive_partname_list; do
		local partname="$partname_archive"
		local partmtdblock="$(get_current_profile_partmtdblock $partname_archive)"
		local partfstype="$(get_current_profile_partfstype $partname_archive)"
		local outfile="$current_profile_backup_path/${current_profile}_${partname}.tar.gz"
		
		archive_partition $partname $partmtdblock $partfstype $outfile
	done
}

function backup_operation() {
# Description: Create partition images of the entire flash, all partitions and create extra archives from config partitions
	mkdir -p $current_profile_backup_path
	msg
	msg "---------- Begin of backup operation ----------"
	backup_entire_flash || return 1
	backup_parts || return 1
	archive_parts || return 1
	msg
}

backup_operation || return 1
