#!/bin/bash

# ------------------------------------------
# Script Name : q2_file_manager.sh
# Description : Menu-driven file manager
# Author      : Ivyashree
# ------------------------------------------

while true
do
    echo "=================================="
    echo "        FILE MANAGER MENU         "
    echo "=================================="
    echo "1. Create Directory"
    echo "2. Create File"
    echo "3. List Files"
    echo "4. Rename File"
    echo "5. Delete File"
    echo "6. Exit"
    echo "=================================="
    read -p "Enter your choice (1-6): " choice

    case $choice in

        1)
            read -p "Enter directory name: " dirname
            if [ -d "$dirname" ]; then
                echo "Directory already exists."
            else
                mkdir "$dirname"
                echo "Directory created successfully."
            fi
            ;;

        2)
            read -p "Enter file name: " filename
            if [ -f "$filename" ]; then
                echo "File already exists."
            else
                touch "$filename"
                echo "File created successfully."
            fi
            ;;

        3)
            echo "Files in current directory:"
            ls -lh
            ;;

        4)
            read -p "Enter current file name: " oldname
            read -p "Enter new file name: " newname
            if [ -f "$oldname" ]; then
                mv "$oldname" "$newname"
                echo "File renamed successfully."
            else
                echo "File does not exist."
            fi
            ;;

        5)
            read -p "Enter file name to delete: " delname
            if [ -f "$delname" ]; then
                rm "$delname"
                echo "File deleted successfully."
            else
                echo "File does not exist."
            fi
            ;;

        6)
            echo "Exiting File Manager..."
            break
            ;;

        *)
            echo "Invalid choice. Please enter 1-6."
            ;;
    esac

    echo ""
done
