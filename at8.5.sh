#!/bin/bash
echo "enter the filename"
read file
gr=` ls -li $file | cut -c12`
gw=` ls -li $file | cut -c13`
gx=` ls -li $file | cut -c14`

if [ $gr == "r" ]
then
        echo $file "has read permissoin"
fi
if [ $gw == "w" ]
then
        echo $file "has write  permissoin"
fi
if [ $gx == "x" ]
then
        echo $file "has execute permissoin"
fi
