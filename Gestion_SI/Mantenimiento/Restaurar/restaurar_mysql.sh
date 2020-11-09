#!/bin/bash
sshkey=/home/admin/.ssh/id_rsa.pub
test -f $sshkey && echo "Clave SSH encontrada, procediendo a conectarse con el repositorio remoto" || ( echo "No se encontraron claves SSH para el usuario admin, primero debe correr el script de instalacion para este servidor (ARCHIVOS)"; exit )

echo "A continuacion sera mostrado todo el historial de respaldos, luego de que haya localizado el que quiere restaurar, copie los primeros 6 digitos del SHA, y escribalos, el sistema se restaurara automaticamente en ese punto."ssh -i $sshkey /homeadmin@192.168.0.5 -p 49555 'cd /backup/Linux && git log'
read -p "Ingrese los primeros 6 digitos del SHA del commit que desea respaldar: " sha
echo "Copiando el repositorio." ; rsync -e "ssh -i $sshkey -p 49555" -chavzp admin@192.168.0.5:/backup/SIBIM-BDS /var && echo "Repositorio copiado con exito" || (echo "hubo errores copiando el repositorio." ; exit)
echo "SHA seleccionado fue: $sha, restaurandolo." ; cd /var/SIBM-BDS && git reset --hard $sha && echo "Repositorio restaurado a la version indicada" || (echo "Hubo errores restaurando el repositorio" ; exit)
mysql -u root -p$adminpwd < /var/SIBIM-BDS/sibim.sql && echo "base de datos sibim restaurada con exito" || (echo "Hubo errores restaurando sibim" ; exit)
mysql -u root -p$adminpwd < /var/SIBIM-BDS/mysql.sql && echo "base de datos mysql restaurada con exito" || (echo "Hubo errores restaurando mysql" ; exit)
rm -rf /var/SIBIM-BDS
echo "Restaurado con exito"