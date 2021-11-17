#! /bin/bash -x

arr=(1 3 -4)
echo ${arr[@]}
sum=0

for i in ${arr[@]}
do
    sum=`expr $sum + $i`
done

echo $sum

