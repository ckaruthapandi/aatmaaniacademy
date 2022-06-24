# !/bin/bash

if [ $2 == + ]
then
        temp=`expr $1 + $3`
        echo "Ans $temp"
elif [ $2 == - ]
then
	temp=`expr $1 - $3`
	echo "Ans $temp"
elif [ $2 == * ]
then
	temp=`expr $1 \* $3`
	echo "Ans $temp"
elif [ $2 == / ]
then
	temp=`expr $1 / $3`
	echo "Ans $temp"
else
	echo " please enter the correct one"
fi



