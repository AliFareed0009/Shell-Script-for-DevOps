#!/bin/bash

#Arrays practice

myArray=( 1 20.5 SingleValue "Multiple Values" )

echo "All the values of array are ${myArray[*]}"

echo "Value of First index ${myArray[1]}"


#Arrays size - Length

echo "The number or length of array is ${#myArray[*]}"

echo "The Value of index Second and Third are ${myArray[*]:2:3}"

#Updating Array
myArray+=( NewValue 2 41 )

echo "Values of new Array are -  ${myArray[*]}"
