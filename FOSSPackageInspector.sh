#!/bin/bash
# Script 2: FOSS Package Inspector
# This script checks if a package is installed and shows basic info

PACKAGE="git"   # you can change this if needed

echo "Checking package: $PACKAGE"
echo "--------------------------------"

# Checking installation using dpkg (for Ubuntu/Debian systems)
if dpkg -l | grep -q "^ii  $PACKAGE"; then
    echo "$PACKAGE is installed on this system."
    
    # Displaying useful package info
    dpkg -s $PACKAGE | grep -E "Version|Maintainer|Description"
else
    echo "$PACKAGE is NOT installed."
fi

echo ""
echo "Package Philosophy:"
# Case statement to describe purpose (as required)
case $PACKAGE in
    git)
        echo "Git: a distributed version control system built for collaboration and speed."
        ;;
    firefox)
        echo "Firefox: an open-source browser focused on privacy and open web standards."
        ;;
    vlc)
        echo "VLC: a media player that supports almost all formats without restrictions."
        ;;
    apache2)
        echo "Apache: a web server that helped build the modern internet."
        ;;
    *)
        echo "No description available for this package."
        ;;
esac
