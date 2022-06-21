#!/bin/bash
clear
sum=0
i="y"
add ()
{
	t=`expr $(($t+1))` 
	echo "enter the Roll number"
	read r
	ar1[$t]=$r

	echo "enter the name"
	read na
	ar2[$t]=$na

	echo "enter the semester"
	read se
	ar3[$t]=$se

	echo "enter the mark"
	read mk
	ar4[$t]=$mk
}
delete ()
{
	z=0
echo " enter the roll number"
read d
#${$#ar1[@]}
for (( i=0; i<5; i++ ))
do 
	
   if [ $d == ${ar1[$i]} ] then
	    ar1[$i]=$z
   fi
done
}
diaplay ()
{
echo "RollNum Name Semester Mark "
for (( i=0; i<7; i++ ))
do
echo "${ar1[$i]}   ${ar2[$i]}    ${ar3[$i]}  ${ar4[$i]}" 
done
}

while [ $i = "y" ]
do
echo "1.Adding"
echo "2.Deletion"
echo "3.search"
echo "4.disply"
echo "Enter your choice"
read ch
case $ch in
    1)add;;
    2)delete;;
    3)serch;;
    4)diaplay;;
    *)echo "Invalid choice";;
esac
echo "Do u want to continue ?[y/n]"
read i
if [ $i != "y" ]
then
    exit
fi    
done   
