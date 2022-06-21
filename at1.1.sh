#!/bin/bash
p=1000
r=4
t=3
echo "Principal is $p"
echo "Rate of Interest in $r% per annum"
echo "Time $t"
si=$(( $p * $t * $r / 100))
echo "Simple Interest is $si"

