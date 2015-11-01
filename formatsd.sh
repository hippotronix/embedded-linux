#!/bin/bash

# to start formatting, we have to unmount all partitions of the sd card
# then  erase the beginning ot the sd card to ensure that existing partitions
# are not detected by running sudo dd if=/dev/zero of=/dev/sdb bs=1M count=16
# then create two partitions by running sudo cfdisk /dev/sdb
# note: be careful in running cfdisk, /dev/sda is your computer's hard drive!!
# 1st partition (32MB, type e = W95 FAT16, mark it bootable)
# 2nd partition (the rest of available space, type 83 = Linux, )
# exit cfdisk and run this script

echo "unmounting partitions..."
umount /media/winston/boot
umount /media/winston/rootfs

echo "formatting sdcard.."
sudo mkfs.vfat -F 16 -n boot /dev/sdb1
sudo mkfs.ext2 -L rootfs -E nodiscard /dev/sdb2
echo "done formatting."
