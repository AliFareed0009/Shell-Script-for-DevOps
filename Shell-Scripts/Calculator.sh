#!/bin/bash

#This is for practice Switch Cases

echo "		### Claculator ###	"

read -p " Enter first value " value1
read -p " Enter second value " value2

echo "Choose an option"

echo "add"
echo "sub"
echo "mul"
echo "div"

read -p " Your Option - " option


if [[ $option == add ]]
then
	echo "Your Answer is - $(($value1+$value2)) "	
elif [[ $option == sub ]]
then
        echo "Your Answer is - $(( value1 - value2 )) "
elif [[ $option == mul ]]
then
        echo "Your Answer is - $(( value1 * value2 )) "

elif [[ $option == div ]]
then
        echo "Your Answer is - $(( value1 / value2 )) "
fi

