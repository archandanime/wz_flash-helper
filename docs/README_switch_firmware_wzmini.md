
[Introduction](README.md) | [Setup](README_setup.md) | [Backup](README_backup.md) | [Restore](README_restore.md) | **Switch profile** | [Other options](README_other_options.md) | [Screenshots](README_screenshots.md) | [Build](README_build.md) | [FAQs](README_FAQs.md) | [Changelog](Changelog.md) | [Limitation](Limitation.md)


**❗ WARNING:**
- DO NOT DISCONNECT POWER when the switch profile operation is going on. Doing this would brick your camera.
- DO NOT share `initramfs.log` when you are switching to OpenIPC with the `setup_openipc_env.sh` script, this log file contains your Wi-Fi name and password.
- Switching to wzmini profile is not supported yet (it is actually supported, but the firmware is still in early development stage).

-----

## 📋 Index

[Switch profile overview](README_switch_profile.md)

[Switch to Stock profile](README_switch_profile_stock.md)

[Switch to OpenIPC profile](README_switch_profile_openipc.md)

Switch to wzmini profile

-----

## 📄 Overview

## 🛠️ Guide

The wzmini profile requires four partition images for: `boot`, `kernel`, `rootfs` and `configs`. It supports wzmini and any modded firmware with all-in-one partition layout.

**Step 1: [Setup](README_setup.md)**

**Step 2: Prepare partition images**

- `boot` and `configs` partition images can be created by making a copy from the Stock firmware backup along with their .sha256sum files.
- `kernel` and `rootfs` partition images along with their .sha256sum files can be downloaded them from (**TBA**).

Example for t31x:

![Alt text](https://raw.githubusercontent.com/archandanime/wz_flash-helper/main/images/switch_profile_wzmini.png)

**Step 3: Edit the program configuration file**

Edit `general.conf` with:
```
restore_partitions="no"
switch_profile="yes"
next_profile="wzmini"

copy_new_sdcard_kernel="no"
```

**Step 4: Power on**

Insert your SD card into your camera and power it on. It would take about 3 minutes to finish writing all partitions, then it will reboot to wzmini firmware.

After your camera finishes booting, you can use an IP scanner (e.g. nmap) to figure out its IP address and connect to it using SSH.