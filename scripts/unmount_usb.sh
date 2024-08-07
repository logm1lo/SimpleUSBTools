#!/bin/bash

# Mount the usb
echo "Unmounting USB....."
sleep 3
sudo umount /mnt/usb

# Check if script executed successfully
exit_code=$?

if [[ $exit_code -eq 0 ]]; then
    echo "USB Unmounted Successfully"
else
    echo "Script failed with return code $exit_code"
fi
