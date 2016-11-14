#!/bin/bash
#Written for CISC220 Assignment 3
#Outputs a list of student names and corresponding courses
#Dean Wilkins-Reeves 10176758
#Sarah Carter 10193595
#Adele McCallum 10093867
#Katherine DuQuesnay 10138898

#associative arrays to hold IDs and their corresponding names
declare -A cIDcName
declare -A sIDsName

{ #read course IDs & names into cIDcName
read; #gets rid of the first line
while read cID cName; do
	cIDcName[$cID]=$cName
done
} < course.txt

{ #read students IDs & names into sIDsName
read; #gets rid of the first line
while read sID sName; do
	sIDsName[$sID]=$sName
done
} < student.txt

{ #read the list of student IDs and course IDs into separate arrays
k=0 #used as a counter
read; #gets rid of the first line
while read sID cID; do
	studentIDs[$k]=$sID
	courseIDs[$k]=$cID
	k=$((k+1))
done
} < student_course.txt

#Output - prints a formatted list of Student names & corresponding Course names
echo -e "Student name \t Course name"
for (( i=0; i<=9; i++ )); do
	echo -e "${sIDsName[${studentIDs[$i]}]} \t ${cIDcName[${courseIDs[$i]}]}"
done
