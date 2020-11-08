#!/bin/bash
sshkey=/home/admin/.ssh/id_rsa.pub
test -f $sshkey && echo "Clave SSH encontrada, procediendo a conectarse con el repositorio remoto" || ( echo "No se encontraron claves SSH para el usuario admin, primero debe correr el script de instalacion para este servidor (ARCHIVOS)"; exit )

echo "A continuacion sera mostrado todo el historial de respaldos, luego de que haya localizado el que quiere restaurar, copie los primeros 6 digitos del SHA, y escribalos, el sistema se restaurara automaticamente en ese punto."ssh -i $sshkey /homeadmin@192.168.0.5 -p 49555 'cd /backup/Linux && git log'
