#!/bin/bash

# IF Else Nested Statement Practice

read -p "Enter your Marks : " marks

if [[ $marks -ge 80 ]]
then
        echo "Your are PASS - A Grade"

elif [[ $marks -ge 60 ]] && [[ $marks -le 79 ]]
then
        echo "You are Pass - B Grade"

elif [[ $marks -ge 50 ]] && [[ $maarks -le 40 ]]
then
        echo "You are PASS - C Grade"

elif [[ $marks -gt 33 ]] && [[ $marks -le 39 ]]
then
        echo "You are PASS - D Grade"

elif [[ $marks == 33 ]]
then
        echo "You are PASS - Passing Marks"

else
	echo "You are FAIL"
fi
