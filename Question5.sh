#Assignment 3 Question 5
#Dean Wilkins-Reeves 10176758
#Sarah Carter 10193595
#Adele McCallum 10093867
#Katherine DuQuesnay 10138898
#Adds “#Developed in cisc220” just after the “#!/bin/bash” line in all executable files in the directory
#!bin/bash



# $ls *(.x)  <-- LISTS just exectuable files in the directory -->  (is this returned as an array??) 

# find ./ -executable -type f   <-- finds exectuable files in directory 

# loop through the files found with [find ./ -executable -type f] and insert “#Developed in cisc220” just after the “#!/bin/bash” line


#possible loop??? :
#psuedo:

#let y = $ls *(.x)
#for (i=0; i<lengthOf(y); i++){
    #at y[i] add "#Developed in cisc220 after the first line
    #}
  
#

#On how to add the #Developed in cisc220 comment into the files:

#sed -i '8s/.*/#Developed in cisc220/'
        #on the 8th line after title, names, explanation of script and the #!bin/bash line
        
        
sed -i '8s/.*/#Developed in cisc220/' ./ -executable -type f
        
