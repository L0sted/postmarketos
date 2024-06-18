#!/bin/bash

execute_command() {
    local cmd="$1"
    $cmd
    if [ $? -ne 0 ]; then
	echo "Update config file failed."
        exit 1
    fi
}

del_linux="rm ~/.local/var/pmbootstrap/cache_git/pmaports/device/testing/linux-xiaomi-dipper"
del_device="rm ~/.local/var/pmbootstrap/cache_git/pmaports/device/testing/device-xiaomi-dipper"
mv_linux="mv ~/postmarketos/linux-xiaomi-dipper ~/.local/var/pmbootstrap/cache_git/pmaports/device/testing/"
mv_device="mv ~/postmarketos/device-xiaomi-dipper ~/.local/var/pmbootstrap/cache_git/pmaports/device/testing/"
mv_firmware="mv ~/postmarketos/firmware-xiaomi-dipper ~/.local/var/pmbootstrap/cache_git/pmaports/device/testing/"

echo "Update config files..."
execute_command "$del_linux"
execute_command "$del_device"
execute_command "$mv_linux"
execute_command "$mv_device"
execute_command "$mv_firmware"

echo "Update confile file successed."

