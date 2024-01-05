#!/bin/bash

AVERAGE=0
SUM=0
NUM=0

while true; do
  read -p "Enter your score [0-100%] ('q' to quit): " SCORE

  # Check for 'q' to quit
  if [[ "$SCORE" == "q" ]]; then
    if (( NUM > 0 )); then
      AVERAGE=$(( SUM / NUM ))
      echo "Average rating: $AVERAGE%."
    else
      echo "No scores entered. Exiting."
    fi
    break
  fi

  # Check if the input is empty or not a number
  if [[ -z "$SCORE" ]] || ! [[ "$SCORE" =~ ^[0-9]+$ ]]; then
    echo "Invalid input. Please enter a number between 0 and 100."
    continue
  fi

  # Check if the input is within the valid range
  if (( SCORE < 0 )) || (( SCORE > 100 )); then
    echo "Invalid input. Please enter a number between 0 and 100."
    continue
  fi

  SUM=$(( SUM + SCORE ))
  NUM=$(( NUM + 1 ))
done

echo "Exiting."
