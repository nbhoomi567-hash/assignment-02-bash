#!/bin/bash

# ------------------------------------------
# Script Name : q3_log_analyzer.sh
# Description : Advanced Log File Analyzer
# Author      : Ivyashree
# ------------------------------------------

read -p "Enter log file name: " logfile

# Check if file exists
if [ ! -f "$logfile" ]; then
    echo "Error: File does not exist."
    exit 1
fi

echo "==============================================="
echo "              LOG ANALYSIS REPORT              "
echo "==============================================="

# Date and time
echo "Analysis Date & Time : $(date)"

# File size
echo "File Size            : $(du -h "$logfile" | cut -f1)"

# Total lines
total_lines=$(wc -l < "$logfile")
echo "Total Lines          : $total_lines"

# Error count
error_count=$(grep -i "error" "$logfile" | wc -l)
echo "ERROR Entries        : $error_count"

# Warning count
warning_count=$(grep -i "warning" "$logfile" | wc -l)
echo "WARNING Entries      : $warning_count"

# Top 5 frequent meaningful words
echo ""
echo "Top 5 Frequent Words:"
tr -s ' ' '\n' < "$logfile" | \
grep -v -E '^[0-9]+$' | \
sort | uniq -c | sort -nr | head -5

echo ""
echo "==============================================="
echo "           END OF REPORT                      "
echo "==============================================="
