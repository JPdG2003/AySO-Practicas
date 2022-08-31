#!/bin/bash

clear

echo -n "Archivo: "

read archivo


if [ -e $archivo ]; then

echo "El archivo" $archivo "existe"


if [ -b $archivo ]; then

echo "Es un archivo especial de bloques"

elif [ -c $archivo ]; then

echo "Es un archivo de caracteres" 

elif [ -d $archivo ]; then 

echo "Es un directorio" 

elif [ -f $archivo ]; then 

echo "Es un fichero ordinario" 

elif [ -h $archivo ]; then 

echo "Es un archivo simbólico" 

fi 

if [ -r $archivo ]; then 

echo "Tiene permiso de lectura" 

fi 



else 

echo "El archivo no existe" 

fi