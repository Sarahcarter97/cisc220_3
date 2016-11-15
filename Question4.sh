#Assignment 3 Question 4
#Dean Wilkins-Reeves 10176758
#Sarah Carter 10193595
#Adele McCallum 10093867
#Katherine DuQuesnay 10138898

#try to sort only the fourth column: the size 
#change size to bytes to avoid confusion between GB and MB
lsblk --noheadings --raw --bytes | sort -k4 -n | head -2
#we only want top 2 can be doone by using head command

