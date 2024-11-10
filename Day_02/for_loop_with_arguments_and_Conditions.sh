#!/bin/bash

<< disclamer
the numbers in for loop () are
dollar1 is folder name
dollar2 is for start range
dollar3 is for end range
disclamer


if [[ $1 == "" ]];
then
    echo "Pleae pass the arguments to make folders/directories -  example: $0 folder_name folder_start_number folder_end_number"

else
    for (( num=$2; num<=$3; num++ ));
    do
        mkdir $1_$num
    done
fi