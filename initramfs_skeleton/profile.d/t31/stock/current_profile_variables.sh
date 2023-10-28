#!/bin/sh
#
# Description: This script contains variables of the current firmware profile
#

## List of all partition names
current_profile_all_partname_list="boot kernel rootfs app kback aback cfg para"

## Where all partition images will be saved
current_profile_backup_path="/sdcard/Wyze_factory_backup"

## Filename of the entire flash dump
current_profile_backup_allparts_filename="t31_stock_all.bin"

## List of partitions will be archived
current_profile_archive_partname_list="cfg"

### Where partition images used to restore partitions are located
current_profile_restore_path="/sdcard/wz_flash-helper/restore/stock"

## Same as "current_profile_all_partname_list" but without boot partition, the user can choose what partitions will be restored
current_profile_restore_partname_list="kernel rootfs app kback aback cfg para"

## Name of SD card boot image
current_profile_sdcard_boot_img_name="factory_t31_ZMC6tiIDQN"