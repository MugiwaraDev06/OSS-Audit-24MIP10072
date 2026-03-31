#!/bin/bash
# Script 3: Disk and Permission Auditor
# This script checks important directories and prints size + permissions

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"
echo "--------------------------------------"

# Looping through each directory
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Getting permissions, owner and group
        PERMISSIONS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        
        # Getting size (ignore permission errors)
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
        
        echo "$DIR => Permissions: $PERMISSIONS | Size: $SIZE"
    else
        echo "$DIR does not exist on this system"
    fi
done

echo ""
echo "Checking Git configuration directory..."

# Checking git config directory
if [ -f "$HOME/.gitconfig" ]; then
    ls -l "$HOME/.gitconfig"
else
    echo "Git config file not found in home directory"
fi
