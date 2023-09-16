#!/bin/bash
number=24
if [ $((number % 2)) -eq 0 ] ;
then
echo " The number is even " ;
else 
echo "  The number is not even" ;
fi
