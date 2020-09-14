#!/bin/bash
#SCRIPT PARA AUTOMATIZAR LA CONFIGURACION DEL SERVIDOR DNS.
#ESTE SCRIPT NO DEBE SER EJECUTADO DIRECTAMENTE, ABRIR DESDE SU RESPECTIVO MENU.

mi_interfaz="Automatizacion/Redes/configs/DNS/interface" #archivo preconfigurado de la interfaz
forward="Automatizacion/Redes/configs/DNS/forward.overclode.sibim" #zona forward
reverse="Automatizacion/Redes/configs/DNS/reverse.overclode.sibim" #zona reverse
namedconf="Automatizacion/Redes/configs/DNS/named.conf"
interfaz=$(ip -o a show | cut -d ' ' -f 2 | grep -v "lo" | head -n 1) #conseguimos el nombre de la interfaz

setenforce 0 #deshabilitar SELinux
systemctl stop firewalld # parar y deshabilitar firewalld para facilitar el proceso
systemctl disable firewalld

yum clean all #borrar cache paquetes y demas para evitar conflictos
yum install -y bind* #instalar librerias de BIND

#cambiar hostname
hostnamectl set-hostname --static "overclode.sibim.dns1"

cp $mi_interfaz /etc/sysconfig/network-scripts/ifcfg-$interfaz #sobreescribir el archivo
cp $namedconf /etc/named.conf
cp $forward /var/named/
cp $reverse /var/named/

echo "OPTIONS=-"4"" >> /etc/sysconfig/named #para indicar que estamos usando IPv4
systemctl start named
systemctl enable named
