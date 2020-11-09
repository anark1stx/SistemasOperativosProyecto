#!/bin/bash 

if [[ ${EUID:-$(id -u)} -ne 0 ]]; then
	echo "DEBE CORRER ESTE SCRIPT COMO USUARIO ROOT O CON SUDO."
	exit
fi

mkdir -p /logs
chmod -R u+x . 
opcion0="99"
clear
while [ "$opcion0" != "0"  ] 
do
	echo "---------------------------------------------------------"
	echo "|		Menu de Gestion SIBIM 			|"
	echo "|							|"
	echo "|1- Gestionar usuarios y grupos			|"
	echo "|2- Mantenimiento					|"
	echo "|3- Configurar servidor(es)			|"
	echo "|4- Agregar y configurar usuarios de proyecto	|"
	echo "|5- Configurar mysql manualmente			|"
	echo "|6- Ver logs					|"
	echo "|0- Salir						|"
	echo "---------------------------------------------------------"
	read -p "> " opcion0

	case "$opcion0" in 
		"1")
			clear
			./UsuariosGrupos/menu_gestion.sh
			;;

		"2")
			clear
			./Mantenimiento/menu_mantenimiento.sh
			;;
		"3")
			clear
			./Mantenimiento/Automatizacion/Redes/main.sh
			;;
		"4")
			clear
			./Mantenimiento/Automatizacion/UsuariosYGrupos/main.sh
			;;
		"5")
			clear
			mysql_instalado=$(yum list installed | grep mariadb)
			if  [ -n "$mysql_instalado" ] ; then
				echo "Si ejecuto el script de automatizacion del servidor, la contrasena del usuario root es la misma que la del usuario admin."
				mysql_secure_installation
			else
				echo "mysql no esta instalado, instalelo primero"
			fi
			;;
		"6")
			clear
			./menu_logs.sh
			;;
		"0")
			clear
			opcion0="0"
			;;

		*)	
			clear
			echo "Opcion invalida"
			;;
	esac

done

