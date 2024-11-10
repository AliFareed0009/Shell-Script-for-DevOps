#!/bin/bash

# This is one line comment

<< comment
This is multi line comment
comment

# For Variables
<< comment
#variable_1=Ali
# For built in commands use $(command)
Example = The Up Time of this system is $(uptime)
comment

name=Ali
echo "My name is $name, today date is $(date) in the system $(whoami))"

