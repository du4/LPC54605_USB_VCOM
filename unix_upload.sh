#!/bin/sh

file_name=$1
usb_name=$2
path="/media/du4/$usb_name*"


for dir in $path
do
    echo "Removing ${dir}/firmware.bin and copy $1"
    rm "$dir"/firmware.bin
    cp $1 "$dir"
done
