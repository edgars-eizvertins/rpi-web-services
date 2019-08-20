#!/bin/bash

echo "Starting backup"

sudo mount -t cifs -o username=pi,password=raspberryPass001ihbapn,file_mode=0777,dir_mode=0777 //TvRaspberry/Shared /home/pi/backup/tv-raspberry

sleep 5

cd ~

sudo umount /home/pi/backup/tv-raspberry

echo "Complete!"
