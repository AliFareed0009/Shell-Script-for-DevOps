#!/bin/bash

<< comment
This is a simple function
function Hello() {
echo "Hey everyone"
}
Hello
comment

function error {
    echo "Please pass arguments ALI or ali - Example: $0 name"
}

function Calling() {
    if [[ $1 == "ALI" ]];
    then
        echo "Use Used - Capital Letter"
    elif [[ $1 == "ali" ]];
    then
        echo "Use Used - Small Letter"
    else
        echo "Please pass arguments ALI or ali - Example: $0 name"
    fi
}

# ( $# means no arguments has passed )
if [[ $# -eq 0 ]];
then 
    error
    exit 1
fi

Calling $1

# if [[ $? -eq 0 ]];
# then
#     echo "This means the previous command failed"
# fi