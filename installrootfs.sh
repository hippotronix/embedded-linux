#!/bin/bash


echo "installing kernel image..."

cp ~/Projects/buildroot/output/images/MLO /media/winston/boot
cp ~/Projects/buildroot/output/images/u-boot.img /media/winston/boot
cp ~/Projects/buildroot/output/images/zImage /media/winston/boot
cp ~/Projects/buildroot/output/images/am335x-boneblack.dtb /media/winston/boot
cp ~/Projects/buildroot/output/images/uEnv.txt /media/winston/boot

echo "installing rootfs..."
sudo tar -C /media/winston/rootfs/ -xf /home/winston/Projects/buildroot/output/images/rootfs.tar

echo "done."


