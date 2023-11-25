#!/bin/bash
# Check the command-line argument value is given or not
if [[ $# -gt 0 ]]; then
 # Assign the filename from comand-line argument value
filename=$1
 # Read file line by line
while  read  line;do
echo $line 
done < $filename 
else 
 # Print message if no argument is provided
    echo "Argument value is missing."
fi



