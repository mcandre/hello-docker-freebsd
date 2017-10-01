#!/bin/sh

sudo kldload /boot/kernel/zfs.ko

sudo pkg install -y docker-freebsd ca_root_nss
