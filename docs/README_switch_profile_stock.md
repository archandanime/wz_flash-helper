
[Introduction](README.md) | [Setup](README_setup.md) | [Backup](README_backup.md) | [Restore](README_restore.md) | **Switch profile** | [Other options](README_other_options.md) | [Screenshots](README_screenshots.md) | [Build](README_build.md) | [FAQs](README_FAQs.md)


**❗ WARNING:**
- DO NOT DISCONNECT POWER when the switch profile operation is going on. This would hard brick your camera.
- Switching to other profiles from OpenIPC is not supported yet. If you have switched to OpenIPC, you need to use SSH or serial connection to switch manually.
- Switching to wzmini profile is not supported yet (it is actually supported but the firmware is still in early development stage)

-----

### [📖 Overview](README_switch_profile.md)

### **Switch to Stock profile**

### [Switch to OpenIPC profile](README_switch_profile_openipc.md)

### [Switch to wzmini profile](README_switch_profile_wzmini.md) 

-----

### Guide

**Step 1: [Setup](README_setup.md)**

**Step 2: Prepare partition images**

Place your Stock partition backup images along with their .sha256sum files under the `wz_flash-helper/restore/stock/` directory.

**Step 3: Edit the program configuration file**

Edit `general.conf` with:
```
restore_partitions="no"
switch_profile="yes"
next_profile="stock"
switch_profile_with_all_partitions="no"
```

**Step 4: Power on**

Insert your SD card to the camera and power it on. It would take about 3 minutes to finish writing all partitions, then it will reboot to Stock firmware.
