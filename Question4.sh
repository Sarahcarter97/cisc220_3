#Assignment 3 Question 4
#Dean Wilkins-Reeves 10176758
#Sarah Carter 10193595
#Adele McCallum 10093867
#Katherine DuQuesnay 10138898

#try to sort only the third column: ie the size
lsblk --noheadings --raw | sort -k3n
#we only want top 2, which will only be in G, not M
