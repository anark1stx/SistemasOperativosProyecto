#!/bin/bash
#SCRIPT PARA AUTOMATIZAR LA CONFIGURACION DEL SERVIDOR ARCHIVOS (principal).
#ESTE SCRIPT NO DEBE SER EJECUTADO DIRECTAMENTE, ABRIR DESDE EL MENU PRINCIPAL.
#NOTA: en caso de estar usando un servicio virtualizado, el gateway del adaptador de red de la PC en la que esté corriendo esta máquina debe cambiarse a la especificada en la carpeta (192.168.0.1).

./Mantenimiento/Automatizacion/UsuariosYGrupos/main.sh && echo "usuarios y grupos creados con exito." || (echo "$(date '+%d/%m/%Y %H:%M:%S'): error creando grupos y usuarios, abortando" >> /logs/resultados_scripts.log ; exit) 

mi_interfaz="Mantenimiento/Automatizacion/Redes/configs/ARCHIVOS/interface" #archivo preconfigurado de la interfaz
mi_ssh="Mantenimiento/Automatizacion/Redes/configs/ARCHIVOS/ssh"
mi_mysql="Mantenimiento/Automatizacion/Redes/configs/ARCHIVOS/my.cnf"
FOUND=$(cat /proc/net/dev | grep -v "lo" | grep ":") #verificar que haya conectado algun adaptador de red

if  [ -n "$FOUND" ] ; then
	echo "Adaptador(es) de red detectados: "
        echo $FOUND
else
	echo "$(date '+%d/%m/%Y %H:%M:%S'): No se encontraron adaptadores de red :(. Hace el favor de conectar el cable Ethernet." >> /logs/resultados_scripts.log ; exit
fi

interfaz=$(ip a show | cut -d ' ' -f 2 | grep -v "lo" | sed '/^[[:space:]]*$/d' | head -n 1 | tr -d ':' ) #conseguimos el nombre de la interfaz

#reinicio servicio
service network restart

#rehago el symlink de la interfaz
ifdown $interfaz 
ifup $interfaz

sed -i "/DEVICE=/c DEVICE=\"$interfaz\"" $mi_interfaz
sed -i "/NAME=/c NAME=\"$interfaz\"" $mi_interfaz

cat $mi_interfaz > /etc/sysconfig/network-scripts/ifcfg-$interfaz #sobreescribir el archivo
echo "NETWORKING=yes" > /etc/sysconfig/network
echo "HOSTNAME=ARCHIVOS" >> /etc/sysconfig/network
ifdown $interfaz
ifup $interfaz
service network restart

test_conn=$(ping -q -t 5 -w1 -c1 192.168.0.5 | grep "100% packet loss")
if [[ -z "$test_conn" ]]; then
	echo "Red configurada con exito."
else
	echo "$(date '+%d/%m/%Y %H:%M:%S'): Hubieron errores comunicandose con el servidor de respaldos. Verifique que el servidor de respaldos esté encendido y que haya sido configurado." >> /logs/resultados_scripts.log ; exit
fi
iptables -P INPUT ACCEPT
iptables -P OUTPUT ACCEPT
iptables -P FORWARD ACCEPT
iptables -F

yum clean all
echo "Instalando git, wget ssh, rsync, expect, crontab, rsyslog."; yum install -q -y epel-release rsyslog expect git openssh-server openssh-clients sshpass rsync crontab httpd &>/dev/null && echo "paquetes instalados con exito" || (echo "$(date '+%d/%m/%Y %H:%M:%S'): Hubo errores instalando los paquetes" >> /logs/resultados_scripts.log ; exit)

echo "Instalando MySQL"
rm -Rf /var/lib/mysql &>/dev/null #en caso de que ya haya una instalacion borro los datos y desinstalo
yum remove MariaDB-server -qy &>/dev/null
service mysql stop &>/dev/null
killall -9 mysqld &>/dev/null
rm -rf /etc/mysql &>/dev/null
rm -rf /var/lib/mysql &>/dev/null
#mysql 8 solo funciona sobre arquitectura de 32 bits por lo que tengo que recurrir a mariadb.
#no existen paquetes para CentOS 7 de 32 bits pero si para centos 6.

{
echo '# MariaDB 10.3 CentOS repository list - created 2019-10-28 23:35 UTC'
echo '# http://downloads.mariadb.org/mariadb/repositories/'
echo '[mariadb]'
echo 'name = MariaDB'
echo 'baseurl = http://yum.mariadb.org/10.3/centos6-x86'
echo 'gpgkey=https://yum.mariadb.org/RPM-GPG-KEY-MariaDB'
echo 'gpgcheck=1'
} > /etc/yum.repos.d/mariadb.org.repo

yum install -y MariaDB-server && echo "Mysql instalado con exito" ; service mysql start
cat $mi_mysql > /etc/my.cnf

mysql_status=$(service mysql status | grep "ERROR")

if [[ -z "$mysql_status" ]]; then
	echo "MySQL instalado correctamente"
else
	echo "$(date '+%d/%m/%Y %H:%M:%S'): Hubieron errores instalando mysql." >> /logs/resultados_scripts.log ; exit
fi

echo "Iniciando configuracion automatica de mysql" ; ./mysql.exp && echo "Con exito" || echo "$(date '+%d/%m/%Y %H:%M:%S'): Hubo un error configurando mysql de manera automatica, el script seguira corriendo pero debera configurarlo manualmente luego." > /logs/resultados_scripts.log
#la instalacion de mysql fue automatizada con autoexpect, posteriormente si el administrador quisiera hacerla lo puede hacer desde el menu principal, pero a mi me pidieron automatizar asi que automatizamos.

service sshd start
service httpd start
service rsyslog start

sshd_status=$(service sshd status | grep "ERROR")

if [[ -z "$sshd_status" ]]; then
	echo "SSH instalado correctamente"
else
	echo "$(date '+%d/%m/%Y %H:%M:%S'): Hubieron errores instalando SSH." >> /logs/resultados_scripts.log ; exit
fi

apache_status=$(service httpd status | grep "ERROR")

if [[ -z "$apache_status" ]]; then
	echo "Apache instalado correctamente"
else
	echo "$(date '+%d/%m/%Y %H:%M:%S'): Hubieron errores instalando Apache." >> /logs/resultados_scripts.log ; exit
fi

chkconfig --add rsyslog
chkconfig --add sshd
chkconfig --add httpd
chkconfig --add mysql

chkconfig rsyslog on
chkconfig sshd on
chkconfig httpd on
chkconfig mysql on

sed -i "/SELINUX=enforcing/c SELINUX=disabled" /etc/sysconfig/selinux  #deshabilitar SELinux para poder usar rsync sin problemas

#genero clave ssh, 
su admin -c "yes '' | ssh-keygen -N '' >&- 2>&-"
copiar_id=$(sshpass -p$adminpwd ssh-copy-id -i /home/admin/.ssh/id_rsa.pub "-p 49555 admin@192.168.0.5" | grep "denied\|ERROR") #sshpass permite pasar la contrasena del usuario a ssh por stdin

if [[ -n "$copiar_id"  ]]; then
	echo "$(date '+%d/%m/%Y %H:%M:%S'): No se pudo establecer comunicacion con el servidor de respaldos, verifique que este encendido y que haya sido configurado." >> /logs/resultados_scripts.log ; exit
else
	echo "Conexion con servidor de respaldos establecida con exito, copiada clave SSH del usuario admin"
fi

cat $mi_ssh > /etc/ssh/sshd_config

echo "Agregando reglas al firewall"

iptables -A INPUT -i lo -j ACCEPT #trafico de la loopback (localhost)
iptables -A INPUT -p tcp --destination-port 22 -j DROP
iptables -A INPUT -p tcp -m tcp --dport 49555 -j ACCEPT
iptables -A INPUT -p tcp -m tcp --dport 80 -j ACCEPT
iptables -A INPUT -p tcp -m tcp --dport 3306 -j ACCEPT

service sshd restart

iptables-save

#este archivo guarda las credenciales y cada vez que efectuo mysqldump no tengo que especificar contrasena.
cp .my.cnf /home/admin/.my.cnf
chown admin /home/admin/.my.cnf
chmod 600 /home/admin/.my.cnf

#copio todos los scripts al directorio acordado
cp -R Mantenimiento/Automatizacion/scripts_cron /var/
chmod -R +x /var/scripts_cron 
cp mis_rutinas /var/mis_rutinas
#asigno el archivo
crontab -u root /var/mis_rutinas

sed -i "/SELINUX=enforcing/c SELINUX=disabled" /etc/sysconfig/selinux

# por ultimo creo la base de datos, roles, usuarios, procedimientos y poblo con los datos q deje precargados
mysql -u root -p$adminpwd < sibimcompleto22.sql && echo "Bases de datos mysql y sibim instaladas e inicializadas con exito" || (echo "$(date '+%d/%m/%Y %H:%M:%S'): Hubo un error creando las bases de datos" >> /logs/resultados_scripts.log ; exit) 
