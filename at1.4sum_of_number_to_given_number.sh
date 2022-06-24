#!/bin/bash
echo " Enter the number"
read n
for (( i=0; i<=n; i++ ))
do
sum=$(( $sum + $i))
done
echo "sum $sum"
