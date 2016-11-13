#!/bin/bash


read -p "Please enter a password:" -s password
LEN=${#password};
Strength=$((3))

#Does  the password have at least 8 characters?
if [ $LEN -lt 8 ] ; then
echo "Password is too short, you need a minimum of 8 characters"
Strength=$((${Strength}-1))
else
echo "Password is 8 or more characters! This is goos"
fi

#Does the password contain one of the special characters?
if echo "$password" | grep '[@#$%&*-+=]' >/dev/null; then
echo "YAY! Your password contains a number"
else 
echo "Your password must contain at least one of the following characters: @ # $ % & * - + ="
Strength=$((${Strength}-1))
fi

#Does the password contain a numeric value?
if echo "${password}" | grep '[0-9]' >/dev/null; then
echo "YAY! Your password contains a number"
else
echo "Your password doesn't contain a number"
Strength=$((${Strength}-1))
fi

#if password doesn't satisfy the condition 1 is taken away from strength counter. 
#Counter starts at 3 and depending on the number of the counter will indicate the password strength

if ((${Strength}==1 )) ; then
echo "Password is WEAK";
elif ((${Strength}==2 )) ; then
echo "Password is MODERATE";
elif ((${Strength}==3 )) ; then
echo "Password is STRONG";
else
echo "Password not good";
fi 
