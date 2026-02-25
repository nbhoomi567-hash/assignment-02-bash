BASH SCRIPTING ASSIGNMENT

Student Name: Divyashree N
Course: Cybersecurity and Ethical Hacking 
Topic: Shell Scripting
Date: 25/02/2026

---------------------------------------------------------
INTRODUCTION
---------------------------------------------------------

This assignment demonstrates practical knowledge of Bash scripting
in a Linux (Ubuntu) environment. The scripts created in this project
showcase file handling, system monitoring, text processing,
automation, and user account reporting.

Each script is written with proper structure, input validation,
and meaningful output formatting.

---------------------------------------------------------
SCRIPT DETAILS
---------------------------------------------------------

1) q1_system_info.sh
---------------------
This script displays important system information such as:
- Current logged-in user
- System uptime
- Memory usage
- Disk usage
- Top running processes

The purpose of this script is to understand system monitoring
commands and how to display formatted output using Bash.

Commands used:
whoami, uptime, free, df, ps


2) q2_file_manager.sh
----------------------
This is a menu-driven file management script that allows the user to:
- Create a directory
- Create a file
- List files
- Rename a file
- Delete a file
- Exit the program

This script demonstrates the use of loops, conditional statements,
case statements, and user input handling.


3) q3_log_analyzer.sh
----------------------
This script analyzes a log file provided by the user and generates
a structured report including:
- Total number of lines
- Number of ERROR entries
- Number of WARNING entries
- Top 5 frequently occurring words
- File size and timestamp of analysis

This script demonstrates text processing using tools such as:
wc, grep, sort, uniq, head, tr, and du.


4) q4_backup.sh
----------------
This script creates a compressed backup of a specified directory.
It:
- Validates if the directory exists
- Creates a backup folder if not present
- Generates a timestamp
- Compresses the directory into a .tar.gz file

This script demonstrates automation and file archiving using tar.


5) q5_user_report.sh
---------------------
This script generates a user account report including:
- Total system users
- Currently logged-in users
- Users with /bin/bash shell
- First 10 users in the system
- Last 5 login records

It demonstrates reading system files like /etc/passwd
and using commands such as who, last, grep, and cut.

---------------------------------------------------------
CONCLUSION
---------------------------------------------------------

Through this assignment, I gained practical experience in:

- Writing structured Bash scripts
- Using conditional statements and loops
- Performing file operations
- Analyzing log data
- Automating backup tasks
- Generating system and user reports

This project strengthened my understanding of Linux command-line
tools and real-world shell scripting applications.
