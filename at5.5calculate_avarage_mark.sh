#!/bin/bash
echo "Enter the Unix mark"
read u
echo "Enter the VB mark"
read v
echo "Enter the PHP mark"
read p
t=`expr $((( $u + $v ) + $p))`
av=`expr $(( $t/3 ))`
echo "av $av"
if [ $av -gt 70 ]
then
	echo "Distinction"
elif [ $av -ge 60 ] && [ $av -le 70 ]
then
	echo "First Class"
elif [ $av -ge 50 ] && [ $av -le 60 ]
then
	echo "Second Class"
elif [ $av -ge 60 ] && [ $av -le 70 ] 
then
	echo "Third Class"
else
	echo " Fail"
fi

