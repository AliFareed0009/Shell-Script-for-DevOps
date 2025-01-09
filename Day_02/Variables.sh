#!/bin/bash

# For Variables

# variable_1=Ali
# For built in commands use $(command)
# Example = The Up Time of this system is $(uptime)
#Variable to store the output of a command
#HOSTNAME=$(hostname)

name=Ali
echo "My name is $name, today date is $(date) in the system $(whoami))"


b="Ali"
c=24

echo "My name is $b and age is $c"

HOSTNAME=$(hostname)

echo "The name of the Machine is $HOSTNAME"

#Constant Variables

readonly UNIVERSITY="BIMS"

echo "My University name is $UNIVERSITY"

#Change variel to see if changes
UNIVERSITY="ARID"


