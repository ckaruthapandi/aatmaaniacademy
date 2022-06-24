#!/bin/bash
for i in *
do
	if [ -r $i -a -w $i ]
	then
	echo $i
	fi
done
