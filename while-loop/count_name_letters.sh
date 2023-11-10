#!/bin/bash

# Prompt the user to enter names separated by spaces
echo "Enter names separated by spaces:"
read -r input_names

# Convert the space-separated input to an array
IFS=' ' read -r -a names <<< "$input_names"

index=0
while [ $index -lt ${#names[@]} ]; do
    current_name="${names[$index]}"

    echo "Spelling out: $current_name"

    # Loop through each letter in the name
    for ((i = 0; i < ${#current_name}; i++)); do
        letter="${current_name:$i:1}"
        echo "$letter"
        sleep 0.8
    done

    index=$((index + 1))
    sleep 1  # Pause between names for better readability
done
