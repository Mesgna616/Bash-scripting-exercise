#!/bin/bash

# Define the directory path
directory_to_check="/mnt/c/users/mesgn/onedrive/documents/Bash-scripting-exercise/if-statments-conditonlas"

# Define the full file path for the new file
file_path="$directory_to_check/myfile.txt"

# Check if the directory exists
if [ -d "$directory_to_check" ]; then
    # Create a file and add content to it
    echo "This is some content for the file." > "$file_path"
    echo "Additional content can be added here." >> "$file_path"
    echo "File created and content added successfully"
else
    echo "Directory does not exist, file not created"
fi
