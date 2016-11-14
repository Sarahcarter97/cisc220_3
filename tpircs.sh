#Assignment 3 Question 2
#Dean Wilkins-Reeves 10176758
#Sarah Carter 10193595
#Adele McCallum 10093867
#Katherine DuQuesnay 10138898
#Takes in a list of words from a user, and outputs an array with each word backwords

#create new array containing words inputted by user
read -p "Insert a list of words:" -a varArray

newarray=()

for string in ${varArray[*]}
do
mysize=${#string}
i=$(expr $mysize - 1)
newstring=""
for ((n=0; n<${#string}; n++))
do
tempchar=${string:$i:1}
#add last element (character) to the new string and decrease i
newstring+=$tempchar
((i--))
done

newarray+=($newstring)
done

echo "Output: " ${newarray[*]}
