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
O/P -->
NAME MAJ:MIN RM   SIZE RO TYPE MOUNTPOINTS
sda    8:0    0 388.4M  1 disk
sdb    8:16   0   186M  1 disk
sdc    8:32   0     1G  0 disk [SWAP]
sdd    8:48   0     1T  0 disk /mnt/wslg/distro
                               /

lsblk -p

NAME     MAJ:MIN RM   SIZE RO TYPE MOUNTPOINTS
/dev/sda   8:0    0 388.4M  1 disk
/dev/sdb   8:16   0   186M  1 disk
/dev/sdc   8:32   0     1G  0 disk [SWAP]
/dev/sdd   8:48   0     1T  0 disk /mnt/wslg/distro

fdisk -l 

Disk /dev/ram0: 4 MiB, 4194304 bytes, 8192 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 4096 bytes
I/O size (minimum/optimal): 4096 bytes / 4096 bytes


Disk /dev/ram1: 4 MiB, 4194304 bytes, 8192 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 4096 bytes
I/O size (minimum/optimal): 4096 bytes / 4096 bytes
```
```bash
pvcreate /dev/sdb
pvs  # To see the PVs
vgcreate vg_app /dev/sdb
vgs # to see VGs
lvcreate -L 20G -n lv_data vg_app
# lvecreate -L <LV_Size> -n <LV_Name> <VG_Name>
lvs # to see LVs
lvdisplay #to see LVs parameters like -> LV path, LV Name, VG Name, LV UUID, LV Write access, LV status, Segments, LV Access
```
```bash
mkfs -t ext4 /dev/vg_app/lv_data  # Created file system on LV
mkdir /data   # for mount point
mount /dev/vg_app/lv_data /data
df -h # to validate
```

```bash
# Lets create a place to store the actual application files for an application
lvcreate -L 5G -n lv_app vg_app
lvs
mkfs -ext4 /dev/vg_app/lv_app
mkdir /app
vi /etc/fstab   ## To get mounted at boot time
## now insert in file like below
/dev/vg_app/lv_app /app ext4 default 0 0
mount /app
df -h
ls -l /dev/vg_app/lv_app
```

```bash
# App generates logs and we want to keep those log files separate from the other data
lvcreate -L 25G -n lv_log vg_app
# OR wanted to use all remaining memory of your PV then use
lvcreate -l 100%FREE -n lv_logs vg_app
lvdisplay # Here see "Current LE (logical extents) "
lvdisplay -m # see PE (physical extents)
pvdisplay -m
lvmdiskscan
-----
pvcreate /dev/sdc
vgextend vg_app /dev/sdc
vgs
-----
df -h /data
lvextend -L +5G -r /dev/vg_app/lv_data  # r --> resize
resizetofs /dev/vg_app/lv_data
```