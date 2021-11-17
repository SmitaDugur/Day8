#!/bin/bash -x

for((i=0;i<10;i++))
do
randomvar=$((RANDOM%899+100))
#read randomvar
array[i]=$randomvar
done
echo ${array[@]}
largest=${array[0]}
secondmaximum='unset'
for((i=1; i < ${#array[@]}; i++))
do
if [[ ${array[i]} > $largest ]]
then
secondmaximum=$largest
largest=${array[i]}
elif (( ${array[i]} != $largest )) && { [[ "$secondmaximum" = "unset" ]] || [[ ${array[i]} > $secondmaximum ]]; }
then
    secondmaximum=${array[i]}
fi
done
echo "secondmaximum = $secondmaximum"
minimum=${array[0]}
secondminimum='unset'
for((i=1; i < ${#array[@]}; i++))
do
if [[ ${array[i]} < $minimum ]]
then
secondminimum=$minimum
minimum=${array[i]}
elif (( ${array[i]} != $minimum )) && { [[ "$secondminimum" = "unset" ]] || [[ ${array[i]} < $secondminimum ]]; }
then
    secondminimum=${array[i]}
fi
done
echo "secondminimum = $secondminimum"
