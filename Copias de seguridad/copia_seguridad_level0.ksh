#!/bin/ksh

#crontab 59 23 * * 0 tar

# Script para realizar copias de seguridad de nivel 0

# Definir dónde queremos guardar las copias de seguridad
DIR=/root/backups
if [[ ! -d $DIR ]]
then
	mkdir -p $DIR  #
fi
# Defino el nombre del fichero de copia de seguridad
TARNAME="Level0_$(date "+%Y%m%d").tar.gz"

# Poner marca de tiempo
touch flag.level0

# Localizar los ficheros queremos guardar y
# Guardar usando la orden tar
find / \( -user invitado -o -user prueba ")" |tar czvf ${DIR}/${TARNAME} -T - # -T es para leer lista de entrada estandar



# Otras cosillas 
