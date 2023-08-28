#!/bin/bash
my_name="Mesgna"
readonly my_age="40" 
echo "My name is $my_name"
echo "I'am $my_age old."
my_age="50"
echo $my_age
# readonly variables can not be reassinged