[Introduction](README.md) | **Setup** | [Backup](README_backup.md) | [Restore](README_restore.md) | [Switch profile](README_switch_profile.md) | [Other options](README_other_options.md) | [Screenshots](README_screenshots.md) | [Build](README_build.md) | [FAQs](README_FAQs.md)



**⚠️ IMPORTANT:**
- Make sure that your SD card partition table is **MBR** and partition format is **FAT**.
- If your camera is Wyze Cam Pan or Wyze Cam v2, you need to update your camera bootloader to with the latest version using [this guide](https://github.com/gtxaspec/wz_mini_hacks/wiki/Setup-&-Installation) before using the program.

-----

### 🛠️ Guide

Download the correct release from the [Release page](https://github.com/archandanime/wz_flash-helper/releases/latest) for your camera SoC and extract it to your SD card.

Example for T31:

![Alt text](https://raw.githubusercontent.com/archandanime/wz_flash-helper/main/images/setup_01.png)

### ℹ️ Notes

- The program adds the extension `.wz_flash-helper` to its kernel file after it is finished to prevent itself from booting multiple times; therefore you need to rename it back if you want to run the program again.

- The program takes about 15 seconds to load before processing operations.

- T20 releases support: `Wyze Cam Pan` and `Wyze Cam v2`.

- T31 releases support: `Wyze Cam v2 Pan`, `Wyze Cam v3` and `Wyze Cam Floodlight`.
