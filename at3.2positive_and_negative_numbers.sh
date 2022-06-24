#!/bin/bash
echo " Enter the N limit"
read n
echo "please enter the number"
zo=0
for (( i=0; i<n; i++ ))
do
	read a
	if [ $a -gt 0 ] 
	then
		ar1[$i]=$a
	elif [ $a -lt 0 ] 
	then
		ar2[$i]=$a
	else
		zo=`expr $zo + 1`

	fi
done
echo "pasivitive numbers ${ar1[@]}"
echo "negative numbers ${ar2[@]}"
echo "numof zeros $zo"

for (( i = 0; i < $n; i++ ))
do
    for ((j = 0; j < $n-$i; j++ ))
    do
        if [[ ${ar1[$j]} -gt ${ar1[$j+1]} ]]
        then
            temp=${ar1[$j]}
            ar1[$j]=${ar1[$j+1]}
            ar1[$j+1]=$temp
        fi
 done
done
echo "after sorted array is: ${ar1[@]}"

for (( i = 0; i < $n; i++ ))
do
    for ((j = 0; j < $n-$i; j++ ))
    do
        if [[ ${ar2[$j]} -gt ${ar2[$j+1]} ]]
        then
            temp=${ar2[$j]}
            ar2[$j]=${ar2[$j+1]}
            ar2[$j+1]=$temp
        fi
 done
done
echo "after sorted array is: ${ar2[@]}"

