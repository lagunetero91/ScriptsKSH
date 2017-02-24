#!/bin/ksh

var[0]=Cero
var[1]=Uno
var[4]=Cuatro
echo ${var[@]} 			#Todo el mundo definido en vaqriable


#Borra los valores del vector, realmennte declara una variable tipo array y si existe la borra, tambien se puede inicializar
set -A var Zero One Two Three		
echo "valores:${var[@]}"

#Mete en un array los diferentes nombres de los shells
set -A var $(cat /etc/shells)
echo "valores2:${var[@]}"

#Inicializa individualmente los elementos que te interesan

typeset os[4]=MacOS os[1]=Linux os[6]=Windows
echo "vector os: ${os[*]}"

print "Los indices que contienen datos son: ${!os[*]}"

#Numero de elementos que estan inicializados
print "El tamaño del array os es: ${#os[*]}"

if [ -z "${os[2]}" ]
	then
		echo "variable nula"
	else
		echo "valor:${os[2]}"
fi
