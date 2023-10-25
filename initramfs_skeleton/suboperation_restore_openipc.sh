#!/bin/sh




function restore_openipc_parts() {
# Description: Restore OpenIPC partitions from partition images
	for partname in $openipc_restore_partname_list; do
		local infile_name=$(get_openipc_partimg $partname)
		local infile="$restore_dir/$infile_name"
		local partmtd=$(get_openipc_partmtd $partname)
		local restore_opt_value=$(get_openipc_restore_opt_value $partname)
		
		if [[ "$restore_opt_value" == "yes" ]]; then
			msg "openipc_restore_$partname value is Yes"
			restore_file_to_partition $partname $infile $partmtd || { msg "Restore $infile to $partname partition failed" ; return 1 ; }
		else
			msg "openipc_restore_$partname value is No"
		fi
	done
}

restore_openipc_parts || return 1
