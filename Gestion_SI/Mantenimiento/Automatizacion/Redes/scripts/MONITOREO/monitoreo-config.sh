#!/bin/bash
#SCRIPT PARA AUTOMATIZAR LA CONFIGURACION DEL SERVIDOR MONITOREO.
#ESTE SCRIPT NO DEBE SER EJECUTADO DIRECTAMENTE, ABRIR DESDE EL MENU PRINCIPAL.
#NOTA: en caso de estar usando un servicio virtualizado, el gateway del adaptador de red de la PC en la que esté corriendo esta máquina debe cambiarse a la especificada en la carpeta (192.168.0.1).
#NOTA2: Debido a las limitaciones tecnicas de la institucion y que debido a ello terminamos usando centos7, la instalacion y configuracion de zabbix no funcionara puesto que zabbix solamente trabaja sobre arquitectura de 64bits, no de 32.

mi_interfaz="Mantenimiento/Automatizacion/Redes/configs/MONITOREO/interface" #archivo preconfigurado de la interfaz
FOUND=$(cat /proc/net/dev | grep -v "lo" | grep ":") #verificar que haya conectado algun adaptador de red

if  [ -n "$FOUND" ] ; then
	echo "Adaptador(es) de red detectados: "
        echo $FOUND
else
	echo "No se encontraron adaptadores de red :(. Hace el favor de conectar el cable Ethernet."
	exit
fi

interfaz=$(ip a show | cut -d ' ' -f 2 | grep -v "lo" | sed '/^[[:space:]]*$/d' | head -n 1 | tr -d ':' ) #conseguimos el nombre de la interfaz

#rehago el symlink de la interfaz
ifdown $interfaz 
ifup $interfaz

#reinicio servicio
systemctl restart network

sed -i "/DEVICE=/c DEVICE=\"$interfaz\"" $mi_interfaz
sed -i "/NAME=/c NAME=\"$interfaz\"" $mi_interfaz

cat $mi_interfaz > /etc/sysconfig/network-scripts/ifcfg-$interfaz #sobreescribir el archivo
hostnamectl set-hostname --static "MONITOREO"

ifdown $interfaz
ifup $interfaz
systemctl restart network

test_conn=$(ping -q -t 5 -w1 -c1 192.168.0.4 && grep "100% packet loss")
if [[ -z "$test_conn" ]]; then
	echo "Red configurada con exito."
else
	echo "Hubieron errores comunicandose con el servidor de archivos."
	exit
fi

echo "Instalando paquetes snmp y firewalld"; yum install -q -y net-snmp net-snmp-utils firewalld &>/dev/null && echo "paquetes SNMP y firewalld instalados con exito" || echo "Hubo errores instalando los paquetes"; exit
systemctl start firewalld
#echo "Instalando paquetes de Zabbix"
#rpm -Uvh https://repo.zabbix.com/zabbix/5.0/rhel/8/x86_64/zabbix-release-5.0-1.el8.noarch.rpm && echo "paquete de zabbix descargado" || echo "Hubo errores descargando el paquete de zabbix."; exit
#dnf clean all
#dnf install zabbix-server-mysql zabbix-web-mysql zabbix-apache-conf zabbix-agent && echo "Instalado con exito, puede proceder a configurarlo." || echo "Hubo errores instalando los paquetes"; exit

sudo firewall-cmd --add-port=161/tcp --permanent
sudo firewall-cmd --add-port=162/tcp --permanent
firewall-cmd --reload

firewalld_status=$(systemctl show -p ActiveState firewalld | cut -d "=" -f2)

if [[ $firewalld_status = "active"  ]]; then
	echo "Firewalld instalado correctamente"
	systemctl enable firewalld
else
	echo "Hubieron errores instalando Firewalld."
	exit
fi
