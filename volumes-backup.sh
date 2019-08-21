#!/bin/bash

echo "Starting backup"

REMOTE_PATH=//TvRaspberry/Shared
REMOTE_FOLDER=web-server
LOCAL_PATH=/home/pi/backup/tv-raspberry

BACKUP_FOLDER=/home/pi/docker-volumes
BACKUP_FILE_NAME=web_server_volumes_$(date +%Y%m%d)_$(date +%H%M).tgz


FULL_LOCAL_PATH=$LOCAL_PATH/$REMOTE_FOLDER

echo "Mounting external drive..."
sudo mount -t cifs -o username=pi,password=raspberryPass001ihbapn,file_mode=0777,dir_mode=0777 $REMOTE_PATH $LOCAL_PATH 

sleep 5

echo "Creating backup archive..."
cd $BACKUP_FOLDER

tar cfz $BACKUP_FILE_NAME * 

echo "Moving backup archive to external drive..."
mv $BACKUP_FILE_NAME $FULL_LOCAL_PATH

echo "Unmounting external drive..."
sleep 5
cd ~

sudo umount $LOCAL_PATH

echo "Complete!"
