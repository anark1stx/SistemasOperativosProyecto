#!/bin/bash 

opciont="99"
clear
while [ "$opciont" != "0"  ] 
do
	echo "---------------------------------------------------------"
	echo "|		Menu de Automatizacion (SERVIDORES) 	|"
	echo "|							|"
	echo "|1- Configurar como servidor DNS			|"
	echo "|2- Configurar como servidor DHCP			|"
	echo "|3- Configurar como servidor principal			|"
	echo "|4- Configurar como servidor de respaldos		|"
	echo "|0- Salir						|"
	echo "--------------------------------------------------------"
	read -p "> " opciont

	case "$opciont" in 
		"1")
			clear
			./Mantenimiento/Automatizacion/Redes/scripts/DNS/dns-config.sh
			;;

		"2")
			clear
			./Mantenimiento/Automatizacion/Redes/scripts/DHCP/dhcp-config.sh
			;;
		"3")
			clear
			./Mantenimiento/Automatizacion/Redes/scripts/ARCHIVOS/archivos-config.sh
			;;

		"4")
			clear
			./Mantenimiento/Automatizacion/Redes/scripts/RESPALDO/respaldo-config.sh
			;;
		"0")
			clear
			opciont="0"
			;;

		*)	
			clear
			echo "Opcion invalida"
			;;
	esac

done

