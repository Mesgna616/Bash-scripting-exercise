#!/bin/bash
# Prompt the user to enter a string
read -p "Enter a string" user_input
# Check if the input string is empty
if [ -z "$user_input" ] ; then 
echo "string is empty"
else
echo "string is not empty"
fi

