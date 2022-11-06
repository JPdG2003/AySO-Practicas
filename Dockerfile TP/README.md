---REQUIREMENTS---


Ubuntu 20.04 or higher.
Docker Engine version 20.10.18 or higher.
VIM text editor.


---CREATING THE DOCKERFILE---


#We'll start by creating the directory where our Dockerfile will be located.
mkdir Trabajos

#Next, we'll position ourselves in that directory.
cd Trabajos

#We'll make a HTML file that'll contain our group names. This file will later be used by the Dockerfile.
vim index.html (And we add the desired content)

#Now, we will make the Dockerfile itself. With it, we can get to work.
vim Dockerfile


---INSIDE THE DOCKERFILE---


#First we define the Ubuntu Image we will be using with it. For this example, it will be Ubuntu 20.04
FROM ubuntu:20.04

#Next, we set ourselves as root user.
USER root

#To prevent interactions with the console during the installation, we define the noninteractive variable
ENV DEBIAN_FRONTEND noninteractive

#Now, we install the 3 Images that will be used by this Dockerfile. We add "-y" to ensure it flows automatically.
RUN apt-get update && apt-get upgrade -y && apt-get install curl -y \
        && apt-get install telnetd -y \
        && apt-get install nginx -y

#We then copy the index.html that we created earlier, and place it in our desired directory.
COPY index.html /usr/share/nginx/html

#We define the volume that will be utilized.
VOLUME volumen1

#Now, we designate Ngnix's services through the CMD command.
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]

#Now, all we need to do is save and close!
Hit the ESC key, and type :wq


---BUILDING THE IMAGE---


#Now, we will build the Image. This process may take a while, depending on your hardware and bandwith. 
docker build -t tpimage1:v1 .


---RUNNING THE CONTAINER---


#Once the building process has finished, we can now run our container. We'll be running it in a set port that will be accesible through localhost. Keep in mind that this has to be a currently unused port, otherwise, it will fail.
docker run -dp 80:80 tpimage1:v1

#(Optional) We can also check if our container has started correctly, using the ps command. It will show us all currently active containers.
docker ps


---END RESULT---


#If everything went through without errors, you can now check the result in the localhost port that you selected earlier. For this example, we went with 80:80
Open your browser and go to localhost:8080


---CREDITS---


Group members:

● Lara Cristofanelli
● Juan Pablo de Guevara
● Marcos Fiorito
● Juan Fuentes
