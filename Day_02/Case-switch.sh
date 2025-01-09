#!/bin/bash

#This i for practice Switch Cases

echo "Choose an option"

echo "a - to see date"
echo "b - to see the list of files"
echo "c - to see the current location"

read -p " Your Option - " choice

case $choice in

	a) 	date;;
	b)	ls -ltr;;
	c)	pwd;;
	*)	echo " Please select option a , b or c "

esac
