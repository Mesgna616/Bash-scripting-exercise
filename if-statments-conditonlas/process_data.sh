#!/bin/bash

input_file="furits.txt"

# Use grep to check if "Mango" is present in the line
if grep -q "Mango" "$input_file"; then
    # If "Mango" is present, use sed to replace it with "Watermelon"
    sed 's/Mango/Watermelon/g' "$input_file" > "output.txt"
else
    # If "Mango" is not present, just copy the line as is
    cp "$input_file" "output.txt"
fi
