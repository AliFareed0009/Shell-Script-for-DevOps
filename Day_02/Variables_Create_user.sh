#!/bin/bash

# Take input from user in terminal

echo "Please enter a username"
read username
echo "You entered username $username"

# To prompt and take a user in one line ( -p = prompt )

read -p "Enter username : " name
echo "You entered name $name"

# To add a user and it s directory ( -m = creating the user's directory )

sudo useradd -m $user

echo "New user added $user"