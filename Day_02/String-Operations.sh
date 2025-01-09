#!/bin/bash

myVar="Hello World"

myVarLength=${#myVar}

echo "The length of the Variable is" $myVarLength

echo "Upper Case is --- ${myVar^^}"

echo "Lower Case is --- ${myVar,,}"

#Replace a string
newVar=${myVar/World/Everyone}
echo "New Var is --- $newVar"

#Slice a String
echo "Before Slice --- $myVar"
echo "After Slice --- ${myVar:6:5}"

