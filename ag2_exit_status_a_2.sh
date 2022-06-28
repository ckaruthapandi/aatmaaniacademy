#!/bin/bash
echo " Enter the file of directory namr"
read input 
if [ -f $input ]
then
	echo "it is file"
	exit 1
elif [ -d $input ]
then
	echo " it is directory"
	exit 1
else
	echo " somthing else "
	exit 2
fi


