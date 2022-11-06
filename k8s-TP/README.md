# TP-AySO-2022
Requirements:
-------------

	>Crear k8s cluster con minikube k3s o kind.
	>Crear dockerfile con nginx y donde copie un index.html diga “Hola mundo, somos el grupo 4 de la UTN”.
	>Buildear y pushear dicha imagen con el tag v1 a hub.docker.com
	>Crear namespace que se llame grupo4
	>Crear un Replicaset in kubernetes en el ns que se creo anteriormente: Requisitos, debe tener 2 replicas, y debe levantar la imagen de nginx previa.
	>Subir todo el codigo a github.
	>Crear README.

Tips:
-----
	>No olvidar .gitignore y .dockerignore files .
	>Usar imagenes alpine o stables.
	>Probar todo local antes de pushear a git.


INTRODUCTION

ONCE WE ENTER THE CONSOLE, WE CREATE THE FOLDER "k8s-TP" TO WORK WITH IT 

---REMINDER--- 
TO CREATE A FOLDER YOU NEED TO USE THE COMMAND * mkdir "FolderName" * 

WE ARE ABLE TO FIND THE FOLDER WITH THE FOLLOWING COMMANDS TO SEE THE PATH IN OUR SYSTEM 
pwd 
/home/juan/k8s-TP

1) CREATE INDEX.HTML 
vim index.html

2) CREATE DOCKERFILE 
vim Dockerfile

3) ONCE WE HAVE THIS FILE, WE ARE ABLE TO BUILD AN IMAGE WITH THE TAG "V1" 
sudo docker build -t juanfuentes/k8spractice:v1 .

4) CREATE A CONTAINER TO TEST TE IMAGE 
sudo docker run -dp 90:90 --name=grupo4 juanfuentes/k8spractice:v1 

5) ONCE THE CONTAINER IS CREATED, WE CAN TEST THE IMAGE TYPING "localhost:9090" IN THE BROWSER 

6) ONCE THE DOCKERHUB USER IS CREATED 
sudo docker login

7) PUSH THE IMAGE ON DOCKERHUB 
sudo docker push juanfuentes/k8spractice:v1

8) CREATE .YAML FILE 
vim namespace.yaml

9) CREATE THE K8S CLUSTER 
sudo kind create cluster --name clusterk8s

10) CREATE NAMESPACE 
kubectl create namespace grupo4

11) APPLY CHANGES 
sudo kubectl apply -f namespace.yaml

12) CHECK THE STATUS OF THE REPLICASET BY OPENING THE DASHBOARD 
minikube dashboard


#=============== Collaborators: =============== 
-Fuentes Juan Pablo    | https://github.com/JuanFuentes1 
-de Guevara Juan Pablo | https://github.com/JPdG2003
-Cristofanelli Lara    | https://github.com/Lara-Sofia
