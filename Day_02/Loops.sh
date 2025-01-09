#!/bin/bash

# This for loop is to print counting from 1 to 10
<< remove_this_and_then_run
for (( num=1; num<=10; num++ ));
do
    echo $num
done
remove_this_and_then_run

# In While loop until the condition is satiffied the while loop runs
<< remove_this_and_then_run
num=0

while [[ $num -le 5 ]]
do  
    echo $num
    num=$((num+1))
done
remove_this_and_then_run

num=10

while [[ `expr $num % 2` == 0 && $num -le 10 ]]
do  
    echo $num
    num=$((num+1))
done

# This is to print number from 1 to 10

for i in {1..10}
do 
	echo "Number is $i"
done

#Getting files from directory

FILE="/home/ali/shell-script-practice/0-readme.sh"

for filename in $(cat $FILE)
do	
	echo " $filename "
done