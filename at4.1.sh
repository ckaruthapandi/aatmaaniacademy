#!/bin/bash
echo " Directorys ----------------------------------- "
find . -type d | wc -l
ls -l | grep ^d
echo " Files ---------------------------------- "
find . -type f | wc -l
ls -l | grep ^-
