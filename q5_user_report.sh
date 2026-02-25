#!/bin/bash

# ------------------------------------------
# Script Name : q5_user_report.sh
# Description : User Account Reporting Tool
# Author      : Ivyashree
# ------------------------------------------

echo "==============================================="
echo "           USER ACCOUNT REPORT                 "
echo "==============================================="

echo "Report Generated On: $(date)"
echo ""

# Total users
total_users=$(wc -l < /etc/passwd)
echo "Total System Users        : $total_users"

# Logged in users
echo ""
echo "Currently Logged-in Users:"
who

# Users with bash shell
bash_users=$(grep "/bin/bash" /etc/passwd | wc -l)
echo ""
echo "Users with /bin/bash shell: $bash_users"

# List first 10 system users
echo ""
echo "First 10 Users in System:"
cut -d: -f1 /etc/passwd | head -10

# Last login records
echo ""
echo "Last 5 Login Records:"
last | head -5

echo ""
echo "==============================================="
echo "              END OF REPORT                    "
echo "==============================================="
