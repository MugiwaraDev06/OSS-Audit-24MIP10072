#!/bin/bash
# Script 5: Open Source Manifesto Generator
# This script creates a small personalised philosophy statement

echo "Answer the following questions:"
echo ""

read -p "1. Name one open-source tool you use daily: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. What would you build and share openly? " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT_FILE="manifesto_$(whoami).txt"

# Writing the manifesto
echo "----------------------------------------" > $OUTPUT_FILE
echo "Open Source Manifesto" >> $OUTPUT_FILE
echo "Date: $DATE" >> $OUTPUT_FILE
echo "----------------------------------------" >> $OUTPUT_FILE
echo "" >> $OUTPUT_FILE

echo "I believe open source represents $FREEDOM." >> $OUTPUT_FILE
echo "Tools like $TOOL show how collaboration can solve real problems." >> $OUTPUT_FILE
echo "In the future, I would like to build $BUILD and share it freely with others." >> $OUTPUT_FILE

echo ""
echo "Manifesto saved to $OUTPUT_FILE"
echo "Preview:"
cat $OUTPUT_FILE
