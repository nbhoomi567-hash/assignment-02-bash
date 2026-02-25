#!/bin/bash

# ------------------------------------------
# Script Name : q4_backup.sh
# Description : Automated Backup Script
# Author      : Ivyashree
# ------------------------------------------

read -p "Enter directory to backup: " dir

# Check if directory exists
if [ ! -d "$dir" ]; then
    echo "Error: Directory does not exist."
    exit 1
fi

# Create backup folder if not exists
backup_dir="backups"
mkdir -p "$backup_dir"

# Create timestamp
timestamp=$(date +"%Y%m%d_%H%M%S")

# Backup file name
backup_file="$backup_dir/${dir}_backup_$timestamp.tar.gz"

# Create compressed backup
tar -czf "$backup_file" "$dir"

echo "========================================"
echo "Backup Successful!"
echo "Backup Location: $backup_file"
echo "========================================"
