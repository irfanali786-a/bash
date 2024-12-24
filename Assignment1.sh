#A1: Write a script for printing all file related information in present working directory (e.g.: size, permission & size etc…)
#Prerequisites:
#
#How to execute a bash script.
#How to change execute permission of a file.
#How read man-page of a command.
#Objective:
#
#To understand how to write and execute a basic bash script
#Requirements:
#
#When you run the script, display all file information from current working directory
#

#!/bin/bash

current_dir=$(pwd)
echo "The Current Directory is :$current_dir"
file_info=$(ls -lrt)
echo "The File info : $file_info"
