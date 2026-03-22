#!/bin/bash

# Script 3: Disk and Permission Auditor
# Author: Shivang Upadhyay

echo "======================================"
echo "     System Footprint Audit"
echo "======================================"

# Directories to inspect
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"
echo "--------------------------------------"

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Permissions, owner, group
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        
        # Size of directory
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist on this system"
    fi
done

echo "--------------------------------------"
echo "Git Configuration Check"
echo "--------------------------------------"

# Check Git config file
if [ -f "/etc/gitconfig" ]; then
    CONFIG_PERMS=$(ls -l /etc/gitconfig | awk '{print $1, $3, $4}')
    echo "/etc/gitconfig exists"
    echo "Permissions: $CONFIG_PERMS"
else
    echo "/etc/gitconfig not found"
fi

echo "======================================"
