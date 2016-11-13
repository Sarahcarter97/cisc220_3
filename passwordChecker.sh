#!/bin/bash


read -p "Please enter a password:" -s password
LEN=${#password};

#Does  the password have at least 8 characters?
if [ $LEN -lt 8 ] ; then
echo "Password is too short, you need a minimum of 8 characters"

else
echo "Password is 8 or more characters! This is goos"
fi
