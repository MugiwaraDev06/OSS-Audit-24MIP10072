#!/bin/bash
# Script 1: System Identity Report
# This script prints basic system info in a readable format

# ---- Student details ----
STUDENT_NAME="Siddarth"
SOFTWARE_CHOICE="Git"

# ---- Collecting system information ----
KERNEL_VERSION=$(uname -r)
CURRENT_USER=$(whoami)
USER_HOME=$HOME
SYSTEM_UPTIME=$(uptime -p)
CURRENT_DATE=$(date)

# Getting distro name (this may vary slightly depending on system)
DISTRO_NAME=$(lsb_release -d 2>/dev/null | cut -f2)

# ---- Display section ----
echo "=========================================="
echo " Open Source Audit - $STUDENT_NAME"
echo "=========================================="
echo "Chosen Software : $SOFTWARE_CHOICE"
echo ""
echo "Kernel Version  : $KERNEL_VERSION"
echo "Distribution    : $DISTRO_NAME"
echo "Logged-in User  : $CURRENT_USER"
echo "Home Directory  : $USER_HOME"
echo "Uptime          : $SYSTEM_UPTIME"
echo "Date & Time     : $CURRENT_DATE"
echo ""
echo "License Info    : Linux is mostly distributed under GPL (Free Software License)"
echo "=========================================="
