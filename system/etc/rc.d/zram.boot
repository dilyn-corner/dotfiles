#!/bin/sh -e

modprobe zram num_devices=5 >/dev/null 2>&1

for dev in 0 1 2 3; do
    echo lz4 > "/sys/block/zram$dev/comp_algorithm"
    echo 2G  > "/sys/block/zram$dev/disksize"
    mkswap     "/dev/zram$dev"
    swapon     "/dev/zram$dev" -p 10
done

echo lz4  > /sys/block/zram4/comp_algorithm
echo 8G   > /sys/block/zram4/disksize
mkfs.ext4   /dev/zram4
mount       /dev/zram4 /tmp
chmod 1777  /tmp
