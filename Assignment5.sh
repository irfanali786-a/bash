#Prerequisites:
#
#How to add real numbers in script.
#How to use piping in commands.
#Objective:
#
#To understand working of piping.
#To learn arithmetic operations in shell script
#Requirements:
#
#Ask user to enter two numbers
#User can enter real numbers also
#Use bc command and piping to do

#!/bin/bash

echo "Enter the first real number"
read first_number
echo "Enter the second real number"
read second_number

# Sum of real number
declare -i sum
sum=$first_number+$second_number

echo "Sum: $sum"
