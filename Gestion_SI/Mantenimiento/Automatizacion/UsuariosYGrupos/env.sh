#!/bin/bash
set -x 
set -n
adminpwd=$(grep -w "admin" Mantenimiento/Automatizacion/UsuariosYGrupos/ulist.txt | cut -d ":" -f2)
echo "export $adminpwd" >> /etc/profile.d/adminpwd.sh #export para poder seguir usandola fuera del script
