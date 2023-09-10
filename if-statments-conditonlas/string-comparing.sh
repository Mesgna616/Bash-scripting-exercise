#!/bin/bash

# Variable with a value containing spaces
a="hello world"

# Using the '==' operator to check if 'hello' is part of the value
if [[ "$a" == *"hello"* ]]; then
  echo "This will be executed."
fi
