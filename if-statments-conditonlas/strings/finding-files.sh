#!/bin/bash

# Check if a filename argument is provided
if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <filename>"
  exit 1
fi

filename="$1"
directory="/mnt/c/users/mesgn/onedrive/documents/Bash-scripting-exercise"

# Use the 'find' command to search for the file in the specified directory
found_files=$(find "$directory" -type f -name "$filename" 2>/dev/null)

if [ -n "$found_files" ]; then
  echo "File(s) found:"
  echo "$found_files"
else
  echo "File not found: $filename"
fi
