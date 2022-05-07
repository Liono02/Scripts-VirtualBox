#!/bin/bash
echo "Bienvenido!"
pass=$(perl -e 'crypt("pass1234", "key")')
for user in "$@"
do
    sudo useradd $user -m -p $pass
    echo "Usuario: $user";
    echo "Creacion de usuaario exitosa!";
done