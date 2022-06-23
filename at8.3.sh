#!/bin/bash
echo -n "Enter First file name : "
read file1
echo -n "Enter Second file name : "
read file2
if [ -f "$file1" ]; 
then
echo "File is exist"
else
echo "File is not exist"
fi

if [ -f "$file2" ];
then
echo "File is exist"
cat $file1 >> $file2
else
echo "File is not exist"
fi


