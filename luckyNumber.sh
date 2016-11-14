#!/bin/bash
#Written for CISC220 assignment 3
#outputs all "lucky numbers" (successive additions of digits = 7) between 1000 and 10000
#Dean Wilkins-Reeves 10176758
#Sarah Carter 10193595
#Adele McCallum 10093867
#Katherine DuQuesnay 10138898

#Sums the digits of a given number
sumDigits(){
local sum=0 #start sum at 0
local n=$1 #number to have digits summed

#while loop 
while (( n > 0 )); do
	x=$((n % 10))
	sum=$((sum + x))
	n=$((n / 10))
done
echo "$sum"
}

#Sums the digits of a given number consecutively until its length is 1
sumAllDigits(){
local numToEval=$1 #number to have digits summed
local numClone=$numToEval #clone the number

while [[ ${#numClone} -gt 1 ]]; do
	numClone=$(sumDigits $numClone)
done

if [[ "$numClone" == 7 ]]; then
	echo "$numToEval is a lucky number!"
fi
}

for (( i=1000; i<=10000; i++)); do
sumAllDigits $i
done
