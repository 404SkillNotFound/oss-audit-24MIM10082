#!/bin/bash

# Script 1: System Identity Report
# Author: Shivang Upadhyay
# Course: Open Source Software

# -------------------------------
# Variables
# -------------------------------
STUDENT_NAME="Shivang Upadhyay"
SOFTWARE_CHOICE="Git"

# -------------------------------
# System Information
# -------------------------------
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DATE=$(date "+%d %B %Y, %T")

# Get distro name from /etc/os-release
DISTRO=$(grep '^PRETTY_NAME=' /etc/os-release | cut -d= -f2 | tr -d '"')

HOME_DIR=$HOME

# -------------------------------
# Display Output
# -------------------------------
echo "==========================================="
echo "   Open Source Audit — $STUDENT_NAME"
echo "==========================================="
echo " Software       : $SOFTWARE_CHOICE"
echo " Distribution   : $DISTRO"
echo " Kernel Version : $KERNEL"
echo " Current User   : $USER_NAME"
echo " Home Directory : $HOME_DIR"
echo " Uptime         : $UPTIME"
echo " Date & Time    : $DATE"
echo "-------------------------------------------"
echo " License Info   : Linux is distributed under the GNU General Public License (GPL)."
echo "==========================================="
