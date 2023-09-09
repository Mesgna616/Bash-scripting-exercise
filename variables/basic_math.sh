#!/bin/bash
var1=10
var2=10
expr var1 + var2
result=$(expr $var1 + $var2)
echo "The result is: $result"