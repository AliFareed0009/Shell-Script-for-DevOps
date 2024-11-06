#!/bin/bash

#Monitoring the free s space disk

FU=$( df -h | grep "/init" | awk '{print $5}' | tr -d % )

if [[ $FU -ge 70 ]]
then
	echo "This space is low $FU%"
else
	echo "All good"
fi

#   Explanation

# THRESHOLD   -   Sets the disk usage percentage threshold
# df -H   -   Lists disk usage in human readable format
# grep "/init"  -    Filters out unnessacry lines
# awk '{print $5}'  -   Extracts the usage percentage 