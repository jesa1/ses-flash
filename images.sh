#!/bin/bash
export LANG=C

echo "Cleaning zypper log"
[ -e /var/log/zypper.log ] && echo -n > /var/log/zypper.log

echo "Clearing unique ids"
rm -fv /var/lib/dbus/machine-id
rm -fv /var/lib/zypp/AnonymousUniqueId

echo "Rebuilding rpm database"
rpm --rebuilddb

echo "Cleaning kiwi files in image"
rm -rfv /etc/ImageVersion
rm -rfv /base-system
rm -rfv /var/cache/kiwi
rm -rfv /var/lib/dpkg

# These two lines must be together; otherwise things will break
# Use the udev device list as our device list 
rm -rfv /dev/*
cp -av /lib/udev/devices/* /dev/

exit 0

