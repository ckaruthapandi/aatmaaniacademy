#!/bin/bash
for i in *
do
	echo " i value "$i
	if [ -r $i -a -w $i ]
	then
	echo $i
	fi
done
