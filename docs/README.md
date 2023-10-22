**Introduction** | [Setup](README_setup.md) | [Backup](README_backup.md) | [Restore](README_restore.md) | [Switch firmware](README_switch_fw.md) | [Other options](README_boot_img_next_boot.md)

## Still under development, you can not use this yet until there is a release


# wz_flash-helper

Automatic parttion backup/restore tool for T20/T31 cameras, works with both stock and OpenIPC firmware.
You can also switch between stock and OpenIPC firmware without a scratch.

## Features
- No serial connection or SSH is needed! only SD card.
- Backup partitions
- Restore partitions
- Switch between stock and OpenIPC firmware
- Dry run option for safety and debugging.
- Initramfs shell for manual debugging if you have a serial connection.
- Other features with [extra options](README_boot_img_next_boot.md)


## Supported cameras
- Wyze Cam Pan
- Wyze Cam v2
- Wyze Cam v2 Pan
- Wyze Cam v3
- Wyze Cam Floodlight


**Note:**
- It is highly recommended to enable `dry_run` to check if everything works before doing real operations.
- Backup is done first, then Restore, then Switch firmware and followed by Custom script.

## Warning
```
I am not responsible for bricking someone's cameras.
DO NOT DISCONNECT POWER when restore(with) or switch firmware operations are going on specially when uboot is being flashed,
this would hardbrick your camera(unless you know how to remove the flash chip and use SPI programmer).
It is also possible to hardbrick the camera with your custom script or you inject dangerous commands to the config file.
```


## Credits
- Gtxaspec with his ideas, tips and hard work on OpenIPC drivers and uboot SD card booting.
- Mnakada with their docker image to build the boot image from [their repo](https://github.com/mnakada/atomcam_tools)
- [OpenIPC project](https://github.com/OpenIPC) with their tools, firmware and tips.