#!/bin/bash
echo "Escribe el nombre de usuario"
read user
grep "$user:" /etc/passwd > /dev/null
if [ $? -eq 0 ]; then
	id $user
else
	echo "El usuario $user no existe en el sistema"
fi
