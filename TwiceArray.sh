#!/bin/bash -x

position=0
for ((i=1;i<=100;i++))
do
var=$((i%11))
if [ $var -eq 0 ]
then
((array[position]=$i))
((position++))
fi
done
echo ${array[@]}
