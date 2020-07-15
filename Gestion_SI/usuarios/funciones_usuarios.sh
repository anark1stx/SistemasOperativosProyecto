#!/bin/bash

ingresar_usuario(){ #esta funcion cumple tanto el rol de agregar nuevos usuarios como el de agregarlo a grupos.
	read -p "Ingrese nombre de usuario: " _user
	echo "Si desea agregar al usuario "$_user" a uno o más grupos, ingrese los grupos separados por espacio a continuación, caso contrario, deje vacío: "
	read -p "Grupos a agregar: " -a _grupos #-a lee una lista o array.
	
	if [ "${#_grupos[@]}" -lt 1 ]; then #Si la cantidad de grupos es menor que 1, se ingresa el usuario solo.
		useradd $_user
	else #Si la cantidad de grupos es 1 o más:
		grupos_con_coma="" #Inicializar la variable que va a tener los grupos separados por coma.
	
		for grupo in $_grupos
		do
			grupos_con_coma+=",$grupo" #guardar los grupos separados por coma
		done

		grupos_con_coma=${grupos_con_coma#","} 
		#esto lo unico que hace es remover la primera coma del string
		#sino saldria: ,grupo1,grupo2,grupo3
		
		useradd -G $grupos_con_coma $_user #finalmente añadimos al usuario a los grupos.
	fi
}


eliminar_usuario(){
	read -p "Ingrese el nombre del usuario que desea eliminar: " _user
	read -p "Seguro que desea eliminar al usuario $_user? (s/n):" opt

	case "$opt" in
		s)
			userdel -r -f $_user
			echo "El usuario $_user eliminado con éxito."
			;;

		n)
			echo "El usuario no fue eliminado."
			;;
		*)
			echo "Seleccione solamente "s" o "n" "
	esac
}


cambiar_uid(){
	read -p "Ingrese el nombre del usuario del que desea cambiar su uid: " _user
	echo "UID actual: $(grep $_user /etc/passwd | cut -d: -f3)"
	read -p "Ingrese la nueva UID para $_user: " _uid_nueva
	usermod -u $_uid_nueva $_user
}

cambiar_nombre_usuario(){
	read -p "Ingrese el nombre del usuario que desea cambiar: " _user
	read -p "Ingrese el nuevo nombre para el usuario $_user: " _userNuevo
	mv /home/$_user /home/$_userNuevo #cambiar el nombre del directorio home
	usermod -l $_userNuevo $_user #esto es para cambiar el nombre del usuario
	
}

cambiar_contrasena_usuario(){
	read -p "Ingrese el nombre del usuario del cual desea cambiar su contraseña: " _user
	passwd $_user
}

eliminar_usuario_de_grupo(){
	read -p "Ingrese el usuario que desea eliminar de determinados grupos: " _user
	echo "Grupos actuales de: $(groups $_user)"
	read -p "Ingrese el/los nombre(s) del(os) grupo(s) del(os) que desea eliminar a $_user: " -a _grupos_sacar
	
	grupos_con_coma="" #Se inicializa la variable que va a tener los grupos separados por coma.
	
	for grupo in $_grupos_sacar
	do
		grupos_con_coma+=",$grupo" #guardar los grupos separados por coma
	done

	grupos_con_coma=${grupos_con_coma#","}

	gpasswd -d $_user $grupos_con_coma
}
