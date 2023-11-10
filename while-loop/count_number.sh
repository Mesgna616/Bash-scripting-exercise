#!/bin/bash
my_num=1
while [[ $my_num -le 10 ]];
do
echo $my_num
my_num=$(( $my_num + 1 ))
sleep 0.8
done
