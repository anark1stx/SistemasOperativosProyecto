#!/bin/bash
#SCRIPT PARA AUTOMATIZAR LA CREACION Y ASIGNACION DE USUARIOS Y GRUPOS DEL PROYECTO

#usuario:password:group1,group2,...group_n
#ulist="Mantenimiento/Automatizacion/UsuariosYGrupos/ulist.txt"
default_ifs=$IFS
ulist="ulist.txt"

for u in $(cat $ulist)
do
	user=$(echo $u | cut -d ":" -f1)
	pass=$(echo $u | cut -d ":" -f2)
	grouplist=$(echo $u | cut -d ":" -f3)
	if [[ $(cut -d ":" -f1 /etc/passwd | grep -w "$user" | wc -l) -eq 0  ]]; then
		useradd "$user"
	fi
	echo "$pass" | passwd --stdin "$user"
	#IFS=","
	#u_g=$(groups $user | tr ' ' ',')
	#u_g=($u_g)
	#for g in $u_g
	#do
		
	#	echo $g
	
		#usermod -a -G "$g" "$user"
	#done
done
