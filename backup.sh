#!/bin/bash
# This script backs up a folder to a backups folder with date and time
# Author: hpjiyagupta

folder=$1
backup_folder=~/backups
time=$(date +"%Y%m%d_%H%M%S")

mkdir -p $backup_folder

cp -r $folder $backup_folder/backup_$time

echo "Backup done. Saved in $backup_folder/backup_$time"

