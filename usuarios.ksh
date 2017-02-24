#Dar de baja a un usuario 

userdel "Nombre de Usuario"

#Dar de alta a un usuario 

adduser -D ASO,profedores -e 2015-5-31 -f 30 Ester
adduser -D ASP,profesores -e 2015-5-31 -f 30 Jose

usermod -g ASO Ester

#-D especifac grupos
# -e fecha de caducidad
# -f cada cuanto hay que renovar


#Establecemos el número máximo de días antes de que se deba de cambiar la clave de acceso
#y establecemos el número de días de aviso.
chage -M 7 -W 5 Ester
chage -M 7 -W 5 Jose


# Añadir Grupos
groupadd Aso
groupadd profesores