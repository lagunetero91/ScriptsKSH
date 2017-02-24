#!/bin/ksh

#crontab 59 23 * * 0 tar

# Script para realizar copias de seguridad de nivel 1

# Definir dónde queremos guardar las copias de seguridad
DIR=/root/backups
if [[ ! -d $DIR ]]
then
	mkdir -p $DIR  #
fi
# Defino el nombre del fichero de copia de seguridad
TARNAME="Level1_$(date "+%Y%m%d").tar.gz"

# Localizar los ficheros queremos guardar y
# Guardar usando la orden tar
find / \( -user invitado -o -user prueba ")" -newer flag.level0 | tar czvf ${DIR}/${TARNAME} -T - # -T es para leer lista de entrada estandar

# Poner marca de tiempo
touch flag.level1



# Otras cosillas 
