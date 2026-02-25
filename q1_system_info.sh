#!/bin/bash

# ------------------------------------------
# Script Name : q1_system_info.sh
# Description : Displays system information
# Author      : Ivyashree
# ------------------------------------------

echo "========================================="
echo "        SYSTEM INFORMATION REPORT        "
echo "========================================="
echo "Report Generated On: $(date)"
echo ""

# Hostname
echo "Hostname:"
hostname
echo ""

# Operating System
echo "Operating System:"
grep PRETTY_NAME /etc/os-release | cut -d= -f2 | tr -d '"'
echo ""

# Kernel Version
echo "Kernel Version:"
uname -r
echo ""

# Uptime
echo "System Uptime:"
uptime -p
echo ""

# CPU Info
echo "CPU Information:"
lscpu | grep "Model name" | awk -F ':' '{print $2}'
lscpu | grep "Model name"
echo ""

# Memory Usage
echo "Memory Usage:"
free -h
echo ""

# Disk Usage
echo "Disk Usage (Root Partition):"
df -h /
echo ""

# Top 5 CPU processes
echo "Top 5 CPU Consuming Processes:"
ps -eo pid,comm,%cpu --sort=-%cpu | head -n 6

echo ""
echo "============= END OF REPORT ============="
