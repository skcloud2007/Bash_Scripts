# 🐧 Disk Management

```bash
df -h             # Check disk size --> Filesystem, Size, Uses, Avail, Use%, Mounted On
```

### Mounting over existing data
```bash
mkdir /home/sandeep
mount /dev/sdb2 /home
# You will not be able to see /home/sarah  now

unmount /home

# You can now see /home/sandeep again.
```

# 🐧 fdisk

```bash
fdisk -l          # display list of devices
fdisk /dev/sdb    # lets work with sdb
# m
# n --> new partition
# p
# 1
# default
# +1G >>>> for 1G size
# choose what type of partition you wanted to choose like for swap 82
# I will add more content

```

# 🐧 Create file system, Mount, Unmount, swap space, file system table, Disk UUIDs and Labels
## File system
```bash
ext # Extended file system
  1. ext2, ext3 and ext4 are later releases
  2. Often the default file  system

Other file system type
  1. ReiserFS
  2. JFS
  3. XFS
  4. ZFS
  5. Btrfs

```
### mkfs
```bash
mkfs -t <TYPE> <DEVICE>

example: mkfs -t ext3 /dev/sdb2
example: mkfs -t ext4 /dev/sdb3
example: mkfs.ext4 /dev/sdb3

# check more info by checking <man mkfs.xfs>

# list mounting for mkfs
ls -l /sbin/mkfs*
```

### Mounting with mount
```bash
mount /dev/sdb3 /opt
# check with df command
df -h
```

#### In order  to make mount persist between reboots, add an entry in the "/etc/fstab" file.

### Unmount with unmount
```bash
unmount /opt
unmount /dev/sdb3
```

#### Preparing swap space
```bash
mkswap /dev/sdb1    # Prepare the swap area for use
swapon /dev/sdb1    # To enable swap partition
swapon -s           # To  see swap devices in use

```

#### /etc/fstab - The file system table
```bash
  1.  Controls what devices get mounted and where on boot.
  2.  Each entry is made up of 6 fields
      1.  device
      2.  mount point
      3.  file system type
      4.  mount options
      5.  dump
      6.  fsck order
```

#### View Labels and UUIDs
```bash
lsblk -f    # To view label and UUID
blkid       # Only UUID
```

#### Labeling a file system
```bash
e2label /dev/sdb3 opt       # Create or modify the label for the file system. For  ext file system use "e2label"
e2label <file_name> <Label>
```