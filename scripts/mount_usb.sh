#!/bin/bash

# Mount the usb
echo "Enter USB name: "
read usb_name
echo "Mounting USB to /mnt/usb/"
sleep 3
sudo mount /dev/$usb_name /mnt/usb/ -o fmask=0000,dmask=0000

# Check if script executed successfully
exit_code=$?

if [[ $exit_code -eq 0 ]]; then
    echo "USB Mounted Successfully"
else
    echo "Script failed with return code $exit_code"
fi
