#!/bin/bash

# function to display menu
display_menu() {
    echo "1. List all files in a directory"
    echo "2. Rename a file"
    echo "3. Monitor system uptime"
    echo "4. Exit"
}

# function to list all files in a directory
list_files() {
    echo "Enter the directory path:"
    read directory

    if [ -d "$directory" ]; then
        echo "Listing files in $directory:"
        ls -l "$directory"
    else
        echo "Invalid directory!"
    fi
}

# function to rename a file
rename_file() {
    echo "Enter the file path:"
    read file

    if [ -f "$file" ]; then
        echo "Enter the new name:"
        read new_name

        mv "$file" "$new_name"
        echo "File renamed successfully!"
    else
        echo "Invalid file!"
    fi
}

# function to monitor system uptime
monitor_uptime() {
    uptime
}

# main script
while true; do
    display_menu

    echo "Enter your choice:"
    read choice


    case $choice in
        1)
            list_files
            ;;
        2)
            rename_file
            ;;
        3)
            monitor_uptime
            ;;
        4)
            break
            ;;
        *)
            echo "Invalid choice!"
            ;;

    esac

    echo "------------------------"
done