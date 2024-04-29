#!/bin/bash

#Monitoring the free s space disk

FU=$( df -h | grep "/init" | awk '{print $5}' | tr -d % )

if [[ $FU -ge 70 ]]
then
	echo "This space is low $FU%"
else
	echo "All good"
fi
