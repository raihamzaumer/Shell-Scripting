#!/bin/bash

#To take in put from user 
read -p "Enter Username which you wanted to create: " username
#print username you entered
echo "Your entered $username"
# To create new user
sudo useradd -m $username

echo "New user is added!!"
