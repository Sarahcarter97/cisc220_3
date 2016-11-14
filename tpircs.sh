

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
newstring+=$tempchar
((i--))
done
newarray+=($newstring)
done

echo "Output: " ${newarray[*]}
