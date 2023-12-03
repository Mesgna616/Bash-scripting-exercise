#!/bin/bash

while true; do
    read -p "Enter two numbers (-1 to quit): " a b

    # Check if both inputs are non-numeric or empty
    if ! [[ $a =~ ^-?[0-9]+$ && $b =~ ^-?[0-9]+$ ]]; then
        if [[ $a == "-1" ]]; then
            break
        else
            echo "Invalid input. Please enter valid numeric values or -1 to quit."
            continue
        fi
    fi

    if [[ $a -eq 0 || $b -eq 0 ]]; then
        echo "Neither number can be zero."
        continue
    elif [[ $a == "-1" ]]; then
        break
    else
        ans=$((a + b))
        echo "The sum of $a and $b is: $ans"
    fi
done
