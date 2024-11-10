#!/bin/bash

<< disclamer
You can write any tag after << sign for comments
disclamer

read -p "Enter the name: " name

if [[ $name == "Ali" ]];
then
    echo "Amazing Name"
elif [[ $name == "ali" ]]
then
    echo "Great Name"
else
    echo "Very Baad"
fi