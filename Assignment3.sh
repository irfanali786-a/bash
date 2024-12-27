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

for i in {1..5}
do
  for j in $( seq 1 $i)
  do
    echo -n "$j "
  done
  echo ""
done