#!/bin/bash

HOST="google.com"
#Output file
OUTPUT_FILE="/home/ali-fareed/DevOps/Shell_Scripts/output.txt"

# Check if the host is reachable
if ping -c 1 $HOST &> /dev/null
then
    echo "$HOST is reachable" >> $OUTPUT_FILE
else
    echo "$HOST is not reachable" >> $OUTPUT_FILE
fi

# Explanation

#HOST    -   The hostname to check
#OUTPUT_FILE -   The file to write the output to
#ping -c 1 $HOST &> /dev/null    -   Pings the host once, suppressing output
#echo "$HOST is not reachable" >> $OUTPUT_FILE   -   Writes to the output file if the host is reachable