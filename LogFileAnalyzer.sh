#!/bin/bash
# Script 4: Log File Analyzer
# Usage: ./script4.sh /var/log/syslog error

LOGFILE=$1
KEYWORD=${2:-"error"}   # default keyword is 'error'
COUNT=0

# Checking if file exists
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File not found."
    exit 1
fi

# Checking if file is empty (simple retry logic)
if [ ! -s "$LOGFILE" ]; then
    echo "Log file is empty. Please provide a valid log file."
    exit 1
fi

# Reading file line by line
while IFS= read -r LINE
do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "--------------------------------------"
echo "Keyword '$KEYWORD' found $COUNT times"
echo "--------------------------------------"

echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -5
