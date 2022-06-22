#!/bin/bash
t=$RANDOM
echo "test $t"
echo "can you guess the random number"
for (( i-0; i<6; i++ ))
do
	read num
	if [ $num -eq $t ] 
	then
		echo " congratulations random number is $t "
		exit
	elif [ $num -gt $t ] 
	then
		echo " To big"
	else
		echo " To small"
	fi
	echo " you can try one more Time"
done
echo " random number is $t"
