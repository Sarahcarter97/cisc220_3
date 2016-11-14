
string="yahoo"
mysize=${#string}
i=$(expr $mysize - 1)
newstring=""

for ((n=0; n<${#string}; n++))
do
tempchar=${string:$i:1}
newstring+=$tempchar
((i--))
done
