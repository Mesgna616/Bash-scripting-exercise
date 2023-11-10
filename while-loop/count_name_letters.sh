#!/bin/bash

# Prompt the user to enter names separated by spaces
IFS=' ' read -r -a names -p "Enter names separated by spaces: "
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
