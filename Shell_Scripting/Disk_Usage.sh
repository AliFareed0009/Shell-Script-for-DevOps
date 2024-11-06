#!/bin/bash

THRESHOLD=10

#   Check disk usage and print a warning if usage is above the threshold

df -H | grep -vE '^Filesystem|tmpfs|cdrom' | awk '{ print $5 " " $1 }' | while read output;
do
    usage=$(echo $output | awk '{ print $1 }' | cut -d'%' -f1)
    partition=$(echo $output | awk '{ print $2 }')
    if [ $usage -ge $THRESHOLD ]; then
    echo "Warning: Disk usage on $partition is at ${usage}%"
    fi
done

#   Explanation

# THRESHOLD   -   Sets the disk usage percentage threshold
# df -H   -   Lists disk usage in human readable format
# grep -vE'^Filesystem|tmpfs|cdrom'   -   Filters out unnessacry lines
# awk '{print $5 "" $1}'  -   Extracts the usage percentage and partition name
# while read output   -   iterates over each line of the filtered output
# usage=$(echo $output | awk '{ print $1 }' | cut -d'%' -f1)  -   Extracts the usage percentage
# partition=$(echo $output |awk '{print $2}') -   Extrats the partition name
# if [ $usage -ge $THRESHOLD ]; then  -   Checks if the usage exceeds the threshold
# echo "Warning: Disk usage on $partition is at ${usage}%"    -   Prints a warning message