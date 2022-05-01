#!/bin/bash
echo "Bienvenido!"
for user in "$@"
do
    sudo useradd $user -m
    echo "Ingrese la contraseña para el usuario: $user";
    sudo passwd $user
    echo "Usuario: $user";
    echo "Creacion de usuaario exitosa!";
done