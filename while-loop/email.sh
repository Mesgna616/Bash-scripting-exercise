#!/bin/bash

# Check if the number of arguments provided is zero
if [ "$#" -eq 0 ]; then
    echo "Error: No filename provided. Please provide the filename as an argument."
    exit 1
fi

# Assign the first argument to the input file variable
input_file="$1"

# Check if the input file exists
if [ ! -f "$input_file" ]; then
    echo "Error: File '$input_file' does not exist or is not a regular file."
    exit 1
fi

# Check if the file contains email addresses
if ! grep -qE '[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}' "$input_file"; then
    echo "Error: The file does not contain email addresses. No replacements performed."
    exit 1
fi

# Email addresses to replace
old_email="mimi@yhaoo.com"
new_email="mimi@uniper.com"

# Create a temporary file
temp_file=$(mktemp) || exit 1

# Read input file line by line using a while loop
while IFS= read -r line; do
    # Use sed to replace 'old@example.com' with 'new@example.com'
    modified_line=$(echo "$line" | sed "s/$old_email/$new_email/g")
    
    # Append modified line to the temporary file
    echo "$modified_line" >> "$temp_file"
done < "$input_file"

# Replace the original file with the modified content
mv "$temp_file" "$input_file"

echo "Email address replacement complete."
