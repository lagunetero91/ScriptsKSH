#!/bin/ksh

# ¿Cómo se si una string es nula?

usuario1= "Pepe"

echo ${usuario1:-$(whoami)}
echo $usuario1
	







exit
# ¿Cómo hago un cut a una variable?

#Método heavy: haciendo un cut

var=012345ABCDE

echo $var | cut -c3-5


#Método eficiente: usar substrings

echo ${var:2:3}


