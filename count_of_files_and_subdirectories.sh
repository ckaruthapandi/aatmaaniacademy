#!/bin/bash
echo "enter the path"
read path
cd $path
pwd
echo "no of files "
ls -lR | grep ^- | wc -l
echo "no of directory"
ls -lR | grep ^d | wc -l
cd -
