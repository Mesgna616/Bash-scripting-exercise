#!/bin/bash

directory=strings
if [[ -d  $directory ]];
then
echo  "The directory  $directory  exists." 
exit 0
else 
echo "The  directory  $directory does not exist."
exit 1
fi
echo "The exist code for this script run is :$?"
echo "You didn't  see that statment"
echo " You won't see this one either."

