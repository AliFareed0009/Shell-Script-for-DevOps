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

# To make a Function

# function Greetings {
# 	echo " Hello Everyone ! "
# }

# # Call function
# Greetings

# # 2nd Method

# Hi(){
# 	echo "Hello World"
# }

# Hi

# Functions Argument

# function PassingValues {
# 	echo "Value one is $1"
#        	echo "Value two is $2"	
# }

# read -p "Enter First number - " value1
# read -p "Enter Second number - " value2

# PassingValues $value1 $value2 