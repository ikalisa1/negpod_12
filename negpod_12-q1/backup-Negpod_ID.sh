#!/bin/bash

# Configuration for remote server
remote_host="2f05c1f8800b.3be8ebfc.alu-cod.online"
remote_username="2f05c1f8800b"
remote_password="d4a1d225d0abda9549d8"

# Source directory to backup
source_dir="negpod_12-q1"

# Destination location on the remote server
remote_location="/summative/0923-2023S"

# Perform the backup using rsync
rsync -avz -e "sshpass -p $remote_password ssh -o StrictHostKeyChecking=no" "$source_dir" "$remote_username@$remote_host:$remote_location/"

echo "Backup completed to $remote_location"
