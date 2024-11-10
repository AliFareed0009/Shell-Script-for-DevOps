#!/bin/bash

<< comment
This is a simple function
function Hello() {
echo "Hey everyone"
}
Hello
comment

if [[ $1 == "" ]];
then 
    echo "Please pass arguments Ali or ali - Example: $0 name"
else
    function Calling() {
        if [[ $1 == "Ali" ]];
        then
            echo "Amazing Name - Capital Letter"
        elif [[ $1 == "ali" ]]
        then
            echo "Great Name  - Small Letter"
        else
            echo "Very Baad"
        fi
    }
fi
Calling $1