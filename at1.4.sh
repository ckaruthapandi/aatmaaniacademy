#!/bin/bash
echo "Enter the N limit"
read n
echo " Enter the number"
for (( i=0; i<n; i++ ))
do
read num
sum=$(( $sum + $num))
done
echo "sum $sum"
