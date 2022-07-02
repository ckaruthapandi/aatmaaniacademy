#!/bin/bash
input="input string test" 
len=${#input}
for (( i=$len-1; i>=0; i-- ))
do
       echo $i	
	reverse="$reverse${input:$i:1}"
	echo $reverse
done
 
echo "Input (original): $input"
echo "Output (rev): $reverse" 
rm two.txt
echo "$reverse" >> two.txt
echo "enter the number"
read n
echo "After reverse -----------------"
echo $n | rev
rev "two.txt"


