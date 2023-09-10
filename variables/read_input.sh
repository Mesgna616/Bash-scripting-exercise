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
