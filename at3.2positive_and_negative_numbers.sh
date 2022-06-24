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
