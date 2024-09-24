# Scenario - Parameter Cheat Sheet
# Write a shell script script which demonstrates all Special Parameters.
# /bin/bash
#!/bin/bash

echo "Number of argument passed: $#"
echo "Script name is $0"
echo "The 2nd argument passed is: $2"
echo "Arguments passed to script are: $*"
echo "Exit status of last command that executed:$?" #This is the previous command for $_
echo "Last argument provide to previous command:$_"
echo "PID of current shell is: $$"
echo "Flags are set in the shell: $-"

#Explanation:

##!/bin/bash: This is known as a shebang line, and it indicates that the script should be interpreted using the Bash shell.
#echo "Number of argument passed: $#": This line prints the number of arguments passed to the script using the special parameter $#.
#echo "Script name is $0": This line prints the name of the script itself using the special parameter $0.
#echo "The 2nd argument passed is: $2": This line prints the second argument passed to the script using the special parameter $2.
#echo "Arguments passed to script are: $*": This line prints all the arguments passed to the script using the special parameter $*.
#echo "Exit status of the last command that executed: $?": This line prints the exit status of the last command that was executed using the special parameter $?. The exit status is a numeric value that indicates whether the last command was successful (0) or encountered an error.
#echo "Last argument provided to the previous command: $_": This line prints the last argument to the previous command using the special parameter $_.
#echo "PID of the current shell is: $$": This line prints the process ID (PID) of the current shell using the special parameter $$.
#echo "Flags are set in the shell: $-": This line prints the flags that are currently set in the shell using the special parameter $-. The flags represent various settings and options in the shell environment.