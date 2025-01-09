#!/bin/bash

#How to store KeyValue Pairs

declare -A myArray

myArray=( [name]=Ali [age]=24 )

echo "My name is ${myArray[name]}"

echo "My age is ${myArray[age]}"
