#Prerequisites:
#
#Knowledge about ssh and scp commands.
#Use of “case” in shell script.
#Copy files/directories with cp command
#Objective:
#
#To understand working of scp and ssh commands.
#Requirements:
#
#Provide a menu to user to select ssh or scp
#Based on user selection ask for user name and ip-address.
#For scp ask user for direction of copy
#remote to local
#local to remote.
#copy file to destination home directory with same source file name.
#Ask for source/destination file location. If no destination location is provided
#If user gives destination along with filename, keep that as destination filename.
#If user provides only destination location (no file name), keep as source file name
#Note: User should know the password for remote user.


#!/bin/bash

echo "Select mode: ssh or scp"
read mode

if [[ "$mode" == "ssh" ]]; then
    echo "Enter username:"
    read username
    echo "Enter IP address:"
    read ip

    echo "Connecting to $username@$ip..."
    ssh "$username@$ip"

elif [[ "$mode" == "scp" ]]; then
    echo "Enter username:"
    read username
    echo "Enter IP address:"
    read ip

    echo "Choose direction of copy:"
    echo "1. Remote to Local"
    echo "2. Local to Remote"
    read direction

    if [[ "$direction" -eq 1 ]]; then
        echo "Enter remote source file path:"
        read remote_source
        echo "Enter local destination path (optional):"
        read local_dest

        if [[ -z "$local_dest" ]]; then
            local_dest=$(basename "$remote_source")
        fi

        echo "Copying from remote to local..."
        scp "$username@$ip:$remote_source" "$local_dest"

    elif [[ "$direction" -eq 2 ]]; then
        echo "Enter local source file path:"
        read local_source
        echo "Enter remote destination path (optional):"
        read remote_dest

        if [[ -z "$remote_dest" ]]; then
            remote_dest=$(basename "$local_source")
        fi

        echo "Copying from local to remote..."
        scp "$local_source" "$username@$ip:$remote_dest"
    else
        echo "Invalid selection for direction of copy. Exiting."
        exit 1
    fi
else
    echo "Invalid mode selected. Please choose either 'ssh' or 'scp'."
    exit 1
fi
