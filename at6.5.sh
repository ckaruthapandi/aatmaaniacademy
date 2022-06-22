#!/bin/bash
echo "list of files"
find . -type f -size 0 -print
echo " you want to delete y/n"
read c
yes="y"
if [ "$c" = "$yes" ]
then
	find . -type f -size 0 -delete
	echo "Deleted "
fi
echo " oooooooook"

