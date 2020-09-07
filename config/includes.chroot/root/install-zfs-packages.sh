#!/bin/sh
set -e

apt install --yes debootstrap gdisk dkms dpkg-dev linux-headers-$(uname -r)
apt install --yes -t buster-backports --no-install-recommends zfs-dkms
modprobe zfs
apt install --yes -t buster-backports zfsutils-linux
