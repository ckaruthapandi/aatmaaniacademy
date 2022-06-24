#!/bin/bash
echo "Enter the number:"
read n
#len= echo $n | wc -c
#echo "Number in words" 
for (( i=1; i<$n; i++ ))
do
	num=$(echo $n | cut -c $i)
#	echo " inside loopp " $n
case $num in

	0) echo "zero" ;;
	1) echo "one" ;;
	2) echo "two" ;;
	3) echo "three" ;;
	4) echo "tour" ;;
	5) echo "five" ;;
	6) echo "six" ;;
	7) echo "seven" ;;
	8) echo "eight" ;;
	9) echo "nine" ;;
esac

#if [ "$i" == "$len" ]
#then
#	exit 
#fi
#echo "lenth" $len
done
