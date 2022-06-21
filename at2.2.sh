#!/bin/bash
if [ $1 -le 0 ]  || [ $2 -le 0 ]
then
echo "Please Enter correct number"
elif [ $1 -gt $2 ] 
then
echo "dividing  small  number  with  bigger  number "
ans=$(($1 / $2))
echo "Answer is :  $ans"
fi
