#!/bin/bash
echo "Enter the Principal"
read p
echo "Enter the Rate of Interest in % per annum"
read r
echo "Enter the Time "
read t
echo "Principal is $p"
echo "Rate of Interest in $r% per annum"
echo "Time $t"
si=$(( $p * $t * $r / 100))
echo "Simple Interest is $si"

