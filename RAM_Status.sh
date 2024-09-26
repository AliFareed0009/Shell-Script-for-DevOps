#!/bin/bash

#set -x

echo "RAM in GB"
free -ht

echo ""

echo "RAM in MB"
free -mt

FREE_RAM=$( free -mt | grep Total | awk '{print $4}' )

THRESH_HOLD=9800

#echo ""

if [[ $FREE_RAM -lt $THRESH_HOLD ]]
then
	echo "Warning, RAM is Running low"
else
	echo "Ram is sufficient - $FREE_RAM MB"
fi

#   Explanation
# THRESHOLD   -   Sets the RAM usage percentage threshold
# FREE_RAM=$( free -mt | grep Total | awk '{print $4}' )    -   Check How much RAM is free
# if [[ $FREE_RAM -lt $THRESH_HOLD ]]   -   If FREE RAM is ls THRESHOLD then show warning
# else echo "Ram is sufficient - $FREE_RAM MB"  -   else show free RAM