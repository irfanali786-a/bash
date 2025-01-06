#Pattern
#
#1
#2 3
#4 5 6
#7 8 9 10
#
#
#
#Prerequisites:
#
#How to use command-line arguments in script.
#How to do arithmetic operations in script.
#How to use piping in commands.
#Objective:
#
#To understand working of command-line arguments
#To understand working of piping.
#To learn arithmetic operations in shell script
#Requirements:
#
#User must provide two numbers and operator through command-line
#Based on input do the operation and show the output.
#Use case to handle multiple operations
#Use expr or bc commands

#!/bin/bash
echo "Enter the number of rows"
read num
count=1
for (( i = 1; i <= num; i++ )); do
  for (( j = 1; j <= i; j++ )); do
    echo -n "$count "
    count=$((count + 1))
  done
  echo
 done