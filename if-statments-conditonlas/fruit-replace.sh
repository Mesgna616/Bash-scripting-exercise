#!/bin/bash
input_file="fruits2.txt"
if [ -e "$input_file" ]; then 
  # Use grep to check if "Mango" or "Orange" exist in the file
if grep -qE  'Mango|Ornage' "$input_file" ; then
 # Use sed to perform the replacements and save the result to a new file
sed -e 's/Mango/Strawberry/g; s/Orange/Blueberry/g'  "$input_file" >  new_fruits.txt 
else echo "No occurrences of 'Mango' or 'Orange' found in "$input_file""
fi
else 
echo " No file by the name "$input_file" exists"
fi
