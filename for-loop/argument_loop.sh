#!/bin/bash

# Iterate through command-line arguments
for ((i = 0; i < $#; i++)); do
  arg=${!i}
  echo "Argument at index $i: $arg"
done
