#!/bin/bash

BACKUP="/backup"
TIME=$(date+"%Y%m%d_%H%M%S" )
BACKUP_FILE="$BACKUP/etc_backup_$TIME. tar.gz"

if [ ! -d "$BACKUP" ]; then
	echo "Creating a backup Directory at $BACKUP"
	mkdir -p "BACKUP"
fi
echo "updating system packages"
sudo apt update && sudo apt upgrade -y

echo "Backing up /etc dir to $BACKUP"
sudo tar -czvf "$BAKCUP" /etc

echo "System update and backup completed"
