#!/bin/bash
str="/home/ubuntu/tt"
if [ -f $str ]
then
  echo $str is a file
  cat $str
elif [ -d $str ]
then
  echo $str is a directory
  ls -l
else
  echo $str is neither a file nor directory
fi
