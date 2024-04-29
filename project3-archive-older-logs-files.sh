#!/bin/bash

# Archive Older Logs Files in a Folder and compress them

date

#Variable
PATH=/home/ali/shell-script-practice
DAYS=10
DEPTH=1
RUN=1

#Check if the Directory is present or not
if [ ! -d $PATH ]
then
	echo "Directory not present: $BASE"
	exit1
fi

#Create archive-logs folderif not present
if [ ! -d $BASE/archive-logs ]
then
	mkdir $BASE/archive-logs
fi

#Find the list of file large than 1MB
for i in `find $PATH -maxdepth $DEPTH -type f -size +2M`
do
	if [ $RUN -eq 0 ]
	then
		gzip $i || exit 1
		mv $i.gz $PATH/archive || exit 1
	fi
done
