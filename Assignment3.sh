#A3 : Read 'n' and generate a pattern given below
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
#How to run a loops in shell scripts.
#How to execute a bash script.
#How to change execute permission of a file.
#Objective:
#
#To understand the working of loops in a script.
#Requirements:
#
#Read a value from user
#Create a pattern as mentioned above

#!/bin/bash

# Prompt the user to enter a number
echo "Enter the number of rows for the pattern:"
read num

# Initialize a counter variable
counter=1

# Outer loop for rows
for ((i = 1; i <= num; i++)); do
  # Inner loop for printing numbers in each row
  for ((j = 1; j <= i; j++)); do
    echo -n "$counter "
    counter=$((counter + 1))
  done
  # Print a new line after each row
  echo
done
