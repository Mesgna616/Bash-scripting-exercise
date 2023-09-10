#!/bin/bash
# In Bash, the read command is used to read input from the user or from a file descriptor. Its primary use is for reading user input from the command line, but it can also be employed for reading input from files or other sources.

echo "Enter names:"
read name
echo "Entered name : $name"

# Using the -p option to provide a custom prompt
read -p "Enter your age: " age
echo "You entered your age as $age."

#!/bin/bash

# Using the -p option to provide a custom prompt while hiding input
read -p "Please enter your password: " -s password
echo  $password
echo "Password accepted."

# Using the -a option to read input into an array
echo "Enther your favorite colors, separted by space"
read  -p "Your favorite color :" -a colors 
echo "You entered"
# Loop through the elements in the 'colors' array and display them
for color in "${colors[@]}"; do
echo "$color"
done

# Read input with a 5-second timeout
read -t 10 -p "Enter something within 5 seconds: " input

# Check if the input is empty
if [ -z "$input" ]; then
  echo "You didn't enter anything within 5 seconds."
else
  echo "You entered: $input"
fi