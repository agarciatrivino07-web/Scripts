#!/bin/bash
echo "1. Muestra la fecha del sistema"
echo "2. Nombre de usuario"
echo "3. Procesos en ejecución"
echo -n "Elige una opción "
read option
case $option in
	1) date;;
	2) whoami;;
	3) top;;
	*) echo "No has elegido nada";;
esac

