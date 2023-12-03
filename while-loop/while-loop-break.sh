#!/bin/bash

while true; do
    read -p "Enter two numbers (-1 to quit): " a b

    if [[ $a == "-1" ]]; then
        break
    elif ! [[ $a =~ ^-?[0-9]+$ && $b =~ ^-?[0-9]+$ ]]; then
        echo "Invalid input. Please enter valid numeric values or -1 to quit."
        continue
    elif ((a == 0 || b == 0)); then
        echo "Neither number can be zero."
        continue
    else
        ans=$((a + b))
        echo "The sum of $a and $b is: $ans"
    fi
done
