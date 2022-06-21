#!/bin/bash
date
date +"%y%m%d test %V %T"
echo "Display date as mm/dd/yy" %D
echo " Year (e.g., 2020)" %Y
echo "Month (01-12)" %m
echo "Long month name (e.g., November)" %B
echo "Short month name (e.g., Nov)" %b
echo "Day of month (e.g., 01)" %d
echo "Day of year (001-366)" %j
echo "Day of week (1-7)" %u
echo "Full weekday name (e.g., Friday)" %A
echo "Short weekday name (e.g., Fri)" %a
echo "Hour (00-23)" %H
echo "Hour (01-12)" %I
echo "Minute (00-59)" %M
echo "Second (00-60)" %S


$date --date="2/02/2010"
date --date="yesterday"

date "+%Y/%m/%d"

date +"%r"
