#!/bin/bash
echo -n "Enter the Total numbers :"
read x
echo "Enter numbers:"
s=0
for(( i=0; i<x; i++))
do
    echo "test"
    read b
    s=$((s + b))
done
av=`expr $(($s  / $x))`
echo "sum of the avarge number is $av"
