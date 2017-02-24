#!/bin/ksh
#Buscar los archivos pertenecientes a los usuarios dentro de un el UID 332
find / -uid 332

#Buscar los archivos pertenecientes a los usuarios dentro de un rango de UID (ej. de 500 a 1000)

find / -uid +499 | find / -uid -1001

#o

find / -uid +499 -uid -1001

#mtime -> marca de ultima modificacion de archivo
#atime -> ultimo acceso
#ctime -> ultimo cabio de atributo

# Buscar los ficheros que hayan cambiado en los ultimos dos dias

find / -mtime -3d
