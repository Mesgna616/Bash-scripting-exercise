#!/bin/bash

# Check if the number of arguments provided is correct
if [ "$#" -ne 3 ]; then
    echo "Error: Please provide the input file, old email, and new email addresses as arguments."
    exit 1
fi

input_file="$1"
old_email="$2"
new_email="$3"

# Check if the input file exists and is a regular file
if [ ! -f "$input_file" ]; then
    echo "Error: File '$input_file' does not exist or is not a regular file."
    exit 1
fi

# Check if the file contains email addresses
if ! grep -qE '[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}' "$input_file"; then
    echo "Error: The file does not contain email addresses. No replacements performed."
    exit 1
fi

# Create a temporary file
temp_file=$(mktemp) || exit 1

# Read input file line by line using a while loop
while IFS= read -r line; do
    # Use sed to replace the old email with the new one
    modified_line=$(echo "$line" | sed "s/$old_email/$new_email/g")
    
    # Append modified line to the temporary file done
    echo "$modified_line" >> "$temp_file"
done < "$input_file"

# Replace the original file with the modified content
mv "$temp_file" "$input_file"

echo "Email address replacement complete."
