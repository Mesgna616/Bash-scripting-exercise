#!/bin/bash

read  -p  " please enter a number " number 
if [ $((number % 2)) -eq 0 ] ; then
echo " $number is an even number"
else 
echo "$number is an odd number"
fi 


