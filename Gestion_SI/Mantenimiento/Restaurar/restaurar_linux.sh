#!/bin/bash
test -f /home/admin/.ssh/id_rsa && echo "Clave SSH encontrada, procediendo a conectarse con el repositorio remoto" || ( echo "No se encontraron claves SSH para el usuario admin, primero debe correr el script de instalacion para este servidor (ARCHIVOS)"; exit )

echo "A continuacion sera mostrado todo el historial de respaldos, luego de que haya localizado el que quiere restaurar, copie los primeros 6 digitos del SHA, y escribalos, el sistema se restaurara automaticamente en ese punto." ; ssh -i /home/admin/.ssh/id_rsa -p 49555 admin@192.168.0.5 'cd /backup/Linux && git log'
read -p "Ingrese los primeros 6 digitos del SHA del commit que desea respaldar: " sha
echo "Copiando el repositorio." ; rsync -e "ssh -i $sshkey -p 49555" -chavzp admin@192.168.0.5:/backup/Linux /var && echo "Repositorio copiado con exito" || (echo "hubo errores copiando el repositorio." ; exit)
echo "SHA seleccionado fue: $sha, restaurandolo." ; cd /var/Linux && git reset --hard $sha && echo "Repositorio restaurado a la version indicada" || (echo "Hubo errores restaurando el repositorio" ; exit)
cd /var #me muevo a var para no tener problemas al sobreescribir home
cp -R home /home && echo "Directorio home respaldado con exito" || "Hubo errores al sobreescribir el directorio home"
cp -R etc /etc && echo "Directorio etc respaldado con exito" || "Hubo errores al sobreescribir el directorio etc"
rm -rf /var/Linux
