#!/bin/bash
echo "Bienvenido!"
Password=$(perl -e 'crypt(const char "key", "pass1234" *salt)')
for user in "$@"
do
    sudo useradd $user -m -p $Password
    echo "Usuario: $user";
    echo "Creacion de usuaario exitosa!";
done