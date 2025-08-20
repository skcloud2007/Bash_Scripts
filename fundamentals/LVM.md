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