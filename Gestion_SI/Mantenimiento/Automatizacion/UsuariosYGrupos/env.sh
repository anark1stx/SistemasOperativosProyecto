#!/bin/bash -x
export adminpwd=$(grep -w "admin" Mantenimiento/Automatizacion/UsuariosYGrupos/ulist.txt | cut -d ":" -f2) #export para poder seguir usandola fuera del script
