#!/bin/bash
# Prompt the user for their age
read -p "please enter your age" age
if [ "$age" -ge 16 ] ; then
echo " Your allowed to drink alchol"
else
years_to_wait=$((16-age))
if [ "$years_to_wait"  -eq 1 ]; then
echo "You have $years_to_wait year to wait before legally being allowed to drink."
else 
echo "You have $years_to_wait years to wait before legally being allowed to drink."
fi
fi

