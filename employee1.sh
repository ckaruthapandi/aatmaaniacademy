#!/bin/bash
temp="new"
temp1="list"
temp2="remove"
temp3="clear"
temp4="lookup"
if [ $1 == $temp ]
then
	echo "$2 $3 $4 $5" >> output.txt
fi
if [ $1 == $temp1 ] 
then
	if [ -f output.txt ]
	then
 		echo " NAME AGE PHONE NUMBER DEPARTMENT "
		cat output.txt
	else
		echo " Database empty "
	fi
fi

if [ $1 == $temp2 ]
then
	echo " enter the name "
	read name
	sed -i /$name/'d' output.txt	
	echo "deleted "

fi

if [ $1 == $temp3 ]
then
	if [ -f output.txt ]
	then
		rm output.txt
		echo " cleared "
	else
		echo "no database "
	fi
fi
if [ $1 == $temp4 ]
then
	echo " Enter the name number "
	read nm
	cat output.txt | grep "$nm"
fi
