#Assignment 3 Question 5
#Dean Wilkins-Reeves 10176758
#Sarah Carter 10193595
#Adele McCallum 10093867
#Katherine DuQuesnay 10138898
#Adds “#Developed in cisc220” just after the “#!/bin/bash” line in all executable files in the directory
#!/bin/bash

#Variables required for sed to search and replace
addition="#Developed in cisc220"
bin="#!/bin"
bash="/bash"

# find ./ -executable -type f   <-- finds exectuable files in directory 
# search for all files that contain #!/bin/bash (seperated for sed to find) with seperated #!/bin/bash and the additional #Developed in cisc220
find . -executable -type f |sed -i "s,$bin$bash,$bin$bash\n$addition"
