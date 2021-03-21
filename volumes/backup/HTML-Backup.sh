#!/bin/bash

#Specify folders whose backup is to be taken in variables
f1="/var/www/html"

# Compress the folder with foldername + date and take backup
filename="backup_`date +%d`_`date +%m`_`date +%Y`.tar.bz2";

# Create compressed file using tar and move to backup folder
tar cfvj /backup/HTML/$filename $f1

# Move to Backup folder
cd /backup/HTML

find "/backupfolder" -type f -mtime +8 -exec rm {} \;

# List the content
ls

# List the disk usage
du -sh
