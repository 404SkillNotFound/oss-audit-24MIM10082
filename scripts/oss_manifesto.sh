#!/bin/bash

# Script 5: Open Source Manifesto Generator
# Author: Shivang Upadhyay

echo "======================================"
echo "   Open Source Manifesto Generator"
echo "======================================"
echo ""

# User input
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# Date and output file
DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

echo ""
echo "Generating your manifesto..."
echo "--------------------------------------"

# Write to file
echo "Open Source Manifesto" > $OUTPUT
echo "Date: $DATE" >> $OUTPUT
echo "" >> $OUTPUT

echo "I believe that tools like $TOOL represent the true spirit of open collaboration." >> $OUTPUT
echo "To me, freedom means $FREEDOM — the ability to create, modify, and share without restriction." >> $OUTPUT
echo "In the future, I aspire to build $BUILD and contribute it to the open-source community." >> $OUTPUT
echo "By doing so, I hope to stand on the shoulders of giants while also becoming one for others." >> $OUTPUT

echo "--------------------------------------"
echo "Manifesto saved to $OUTPUT"
echo ""

# Display file
cat $OUTPUT

echo "======================================"

# Note: You can create an alias like:
# alias manifesto='./oss_manifesto.sh'
