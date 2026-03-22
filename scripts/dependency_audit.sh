#!/bin/bash

# Script 2: FOSS Package Inspector
# Author: Shivang Upadhyay

PACKAGE="git"

echo "======================================"
echo "     FOSS Package Inspection Tool"
echo "======================================"

# Check if package is installed
if dpkg -l | grep -qw "$PACKAGE"; then
    echo "$PACKAGE is installed."

    echo "--------------------------------------"
    echo "Package Details:"
    dpkg -s $PACKAGE | grep -E 'Version|Maintainer|Description'
else
    echo "$PACKAGE is NOT installed."
    exit 1
fi

echo "--------------------------------------"

# Philosophy / description using case
case $PACKAGE in
    git)
        echo "Git: A distributed version control system built to ensure freedom and speed in software development."
        ;;
    apache2)
        echo "Apache: The web server that helped build the modern open internet."
        ;;
    mysql)
        echo "MySQL: Open source database powering millions of applications."
        ;;
    firefox)
        echo "Firefox: A browser built to protect an open and free web."
        ;;
    *)
        echo "Unknown package. No philosophy available."
        ;;
esac

echo "======================================"
