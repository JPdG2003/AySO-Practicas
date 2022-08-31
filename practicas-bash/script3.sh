#!/bin/bash

echo Ingrese una nota numerica

read nota

if [ $nota -ge 9 ]; then 

echo "sobresaliente" 

elif [ $nota -ge 7 ]; then 

echo "notable" 

elif [ $nota -ge 6 ]; then

echo "bien" 

elif [ $nota -ge 5 ]; then 

echo "suficiente" 

else 

echo "Insuficiente" 

fi