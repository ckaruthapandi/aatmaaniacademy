#!/bin/bash
echo "Enter the Rajesh Basic salary"
read b
da=`expr $(($b*34/100))`
echo "daily allowance 34 %" $da
hra=`expr $(($b *24/100))`
echo "house rent allowance 24 %" $hra
pf=`expr $((b*11/100))`
echo "provident fund  11 %" $pf

temp1=`expr $(( $hra+ $da ))`
temp2=`expr $(( $temp1 - $pf ))`
total=`expr $(( $b+temp2 ))` 
echo "Gross salary" $total
