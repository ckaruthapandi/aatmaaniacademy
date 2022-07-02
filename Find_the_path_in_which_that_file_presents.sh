#!/bin/bash
echo "Enter the file name"
read f
find / -iname $f -print 2>/dev/null
echo "another type"
find / -type f -name "two.txt" 2>/dev/null

