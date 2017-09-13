#Take latest ubuntu and add Python on it
FROM python:latest

#The dir in which we want to be
WORKDIR /root

#Now we add a sample text file
ADD atextfile.txt /root 

#We need nano and there's no docker repository on it so let's install them
RUN apt-get update -y
RUN apt-get install nano -y

#We run the bash, if we needed some other command we separate them by commas. 
CMD ["bash"]

