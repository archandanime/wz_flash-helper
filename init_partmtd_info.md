
**PART:** Partition name.

**START:** Partition start address.

**SIZE:** Partition size(in 1k block).

**MTD MAPPING:** MTD mapping by the kernel by setting `mtdparts` with `CONFIG_CMDLINE` with partitions size and offset so they can be read/written correctly.

**MTD DEVICE:** MTD device name mapped by the kernel and can be performed read/write operations from user space.

- Used partition names are the as mtdparts parameter on the kernels:
```
---------- T20 stock ----------
PART     SIZE(dec)  START(dec)  START(hex)     MTD MAPPING               MTD DEVICE
boot     256        0           0x0            256K@0(boot)              /dev/mtd0
kernel   2048       256         0x40000        2048K@256K(t20_kernel)    /dev/mtd1
root     3392       2304        0x240000       3392K@2304K(t20_root)     /dev/mtd2
driver   640        5696        0x590000       640K@5696K(t20_driver)    /dev/mtd3
appfs    4736       6336        0x630000       4736K@6336K(t20_apps)     /dev/mtd4
backupk  2048       11072       0xad0000       2048K@11072K(t20_backupk) /dev/mtd5
backupd  640        13120       0xcd0000       640K@13120K(t20_backupd)  /dev/mtd6
backupa  2048       13760       0xd70000       2048K@13760K(t20_backupa) /dev/mtd7
config   256        15808       0xf70000       256K@15808K(t20_config)   /dev/mtd8
para     256        16064       0xfb0000       256K@16064K(t20_para)     /dev/mtd9

---------- T31 stock ----------
PART    SIZE(dec)  START(dec)  START(hex)     MTD MAPPING                MTD DEVICE
boot    256        0           0x0            256K@0(boot)               /dev/mtd0
kernel  1984       256         0x40000        1984K@256K(t31_kernel)     /dev/mtd10
rootfs  3904       2240        0x230000       3904K@2240K(t31_rootfs)    /dev/mtd11
app     3904       6144        0x600000       3904K@6144K(t31_app)       /dev/mtd12
kback   1984       10048       0x9d0000       1984K@10048K(t31_kback)    /dev/mtd13
aback   3904       12032       0xbc0000       3904K@12032K(t31_aback)    /dev/mtd14
cfg     384        15936       0xf90000       384K@15936K(t31_cfg)       /dev/mtd15
para    64         16320       0xff0000       64K@16320K(t31_para)       /dev/mtd16

---------- T20 and T31 OpenIPC ----------
PART         SIZE(dec)  START(dec)  START(hex) MTD MAPPING                       MTD DEVICE
boot         256        0           0x0        256K@0(boot)                      /dev/mtd0
env          64         256         0x40000    64K@256K(openipc_env)             /dev/mtd17
kernel       3072       320         0x50000    3072K@320K(openipc_kernel)        /dev/mtd18
rootfs       10240      3392        0x350000   10240K@3392K(openipc_rootfs)      /dev/mtd19
rootfs-data  2752       13632       0xd50000   2752K@13632K(openipc_rootfs-data) /dev/mtd20

Entire flash mapping                            2752K@13632K,16384k@0(all)         /dev/mtd21
```

- MTD mapping with kernel commandline:
```
CONFIG_CMDLINE="console=ttyS1,115200n8 mem=100M@0x0 rmem=28M@0x5000000 rdinit=/init mtdparts=jz_sfc:256K@0(boot),2048K@256K(t20_kernel),3392K@2304K(t20_root),640K@5696K(t20_driver),4736K@6336K(t20_apps),2048K@11072K(t20_backupk),40K@13120K(t20_backupd),2048K@13760K(t20_backupa),256K@15808K(t20_config),256K@16064K(t20_parcaa),1984K@256K(t31_kernel),3904K@2240K(t31_rootfs),3904K@6144K(t31_app),1984K@10048K(t31_kback),3904K@12032K(t31_aback),384K@15936K(t31_cfg),4K@16320K(t31_para),64K@256K(openipc_env),3072K@320K(openipc_kernel),10240K@3392K(openipc_rootfs),2752K@13632K(openipc_rootfs-data),16384k@0(all)"
```
