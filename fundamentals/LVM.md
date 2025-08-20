# 🐧 Logical Volume Manager
```text
Easily Resize Storage While Online
Expand or shrink file systems in real-time while the data remains online and fully accessible
Easily migrate data from one storage device to another while online

Try to keep human-readable device names of your choosing like --> /dev/vg_database/lv_db_logs vs /dev/sdb3
```

```text
Disk striping ===>>>> Increase throughput by allowing your system to read data in parallel

Data redundancy / Data Mirroring ===>>>> Increase fault tolerance and reliability by having more than one copy of your data.

Snapshot ===> Create point-in-time snapshots of your filesystems
```

```bash
LVM introduces extra layers of abstraction between devices and filesystems placed on those storage devices
```

> Logical Volumes (LV)
>> Volume Group (VG)
>>> Physical Volumes (PV)
>>>> Storage Devices

- Without LLVM, you would create a file system on a disk partition, but with LLVM you create a file system on a       logical volumes.
- As long as there is free space in the volume group, logical volume can be extended.

# 🐧 LVM Creation process
```text
- Create one or more PVs
- Create VGs from those one or more PVs
- Create one or more logical volumes (LVs) from VGs
```

#### steps involved
```bash
lsblk --->>>

admin@LAPTOP-DC8DRH8K:~/Bash_Scripts/fundamentals$ lsblk
NAME MAJ:MIN RM   SIZE RO TYPE MOUNTPOINTS
sda    8:0    0 388.4M  1 disk
sdb    8:16   0   186M  1 disk
sdc    8:32   0     1G  0 disk [SWAP]
sdd    8:48   0     1T  0 disk /mnt/wslg/distro
                               /
```