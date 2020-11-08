#!/bin/bash
export adminpwd=$(grep -w "admin" ulist.txt | cut -d ":" -f2) #export para poder seguir usandola fuera del script
echo "pwd : $adminpwd"
