#!/bin/bash
echo "Please Enter the Basic salary"
read basic
if [ $basic -gt 0 ]
then
dp=$((basic * 50/100))
echo " dp $dp"

temp=$(($basic+$dp))
hra=`expr $temp \* 35 / 100`
echo "hra $hra"

temp=$(($basic+$dp))
ma=`expr $temp \* 8 / 100`
echo "ma $ma"

temp=$(($basic+$dp))
pf=`expr $temp \* 3 / 100`
echo "pf $pf"
else
   echo "please enter correct value"
fi
