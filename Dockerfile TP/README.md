PASO 1:
mkdir Trabajos
cd Trabajos
vim Dockerfile

PASO 2:
--DENTRO DEL DOCKERFILE--

partimos desde la imagen ubuntu
FROM ubuntu:20.04


Nos establecemos como usuario root
USER root


Establecemos una variable de entorno para evitar una consola interactiva
ENV DEBIAN_FRONTEND noninteractive


Instalamos las 3 imagenes requeridas con un "-y" para darle yes a todo automaticamente
RUN apt-get update && apt-get upgrade -y && apt-get install curl -y \
        && apt-get install telnetd -y \
        && apt-get install nginx -y


Copiamos el index desde nuestra ubicacion, y la llevamos al directorio indicado
COPY index.html /usr/share/nginx/html

Definimos el volumen que vamos a utilizar
VOLUME volumen1


Utilizamos el CMD del servicio de nginx
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]


Guardamos: wq!



PASO 3:
Buildeamos la imagen
docker build -t tpimage1:v1 .

Corremos el container con el nombre que le pusimos a la imagen
docker run -dp 80:80 tpimage1:v1

Nos fijamos si esta corriendo el container
docker ps


PASO 4:
Abrimos el navegador y escribimos lo siguiente
localhost:8080
