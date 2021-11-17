#!/bin/bash -x

for((i=0;i<10;i++))
do
randomCheck=$((RANDOM%899+100))
#read randomCheck
arr[i]=$randomCheck
done
echo ${arr[*]}
for ((i=0;i<10;i++))
do
for ((j=0;j<9;j++))
do
if [ ${arr[j]} -gt ${arr[$((j+1))]} ]
        then
            temp=${arr[j]}
            arr[$j]=${arr[$((j+1))]}
            arr[$((j+1))]=$temp
        fi
done
done
echo "array in sorted order"
echo ${arr[*]}
j=0
echo "${arr[$((j+1))]}" second smallest element
echo "${arr[-2]}" second largest element
