#!/bin/bash
#SCRIPT PARA AUTOMATIZAR LA CREACION Y ASIGNACION DE USUARIOS Y GRUPOS DEL PROYECTO
#usuario:password:group1,group2,...group_n
ulist="Mantenimiento/Automatizacion/UsuariosYGrupos/ulist.txt"
default_ifs=$IFS

for gList in $(cat $ulist | cut -d ":" -f3)
do	
	IFS=","
	for g in $gList
	do
		if [[ $(cut -d ":" -f1 /etc/group | grep -w "$g" | wc -l) -eq 0 ]]; then
			groupadd "$g"
		fi
	done
done

while read -r u || [[ $u  ]]; do
	user=$(echo $u | cut -d ":" -f1)
	pass=$(echo $u | cut -d ":" -f2)
	grouplist=$(echo $u | cut -d ":" -f3)
			
	if [[ $(cut -d ":" -f1 /etc/passwd | grep -w "$user" | wc -l) -eq 0  ]]; then
		useradd "$user"
	fi
	echo "$pass" | passwd "$user" --stdin 
	
	IFS=","
	for g in $grouplist
	do	
		if [ $(grep -w "$grupo" /etc/group | grep -w "$_user" | wc -l ) -eq 0 ]; then	
			usermod -a -G "$g" "$user"
		fi	
	done
	IFS=$default_ifs
done < $ulist

chmod -R ug+rw admin:administrador /home
chmod -R ug+rw admin:administrador /var
chmod -R ug+rw admin:administrador /etc
