#!/bin/bash
echo "Bienvenido!"
Password=$(perl -e 'crypt(const char "key", "pass1234" *salt)')
Password2=$(echo "pass1234" | openssl enc -aes-256-cbc -md sha512 -a -pbkdf2 -iter 100000 -salt -pass pass:'pass1234')
for user in "$@"
do
    sudo useradd $user -m -p $Password2 | openssl enc -aes-256-cbc -md sha512 -a -d -pbkdf2 -iter 100000 -salt -pass pass:"pass1234"
    echo "Usuario: $user";
    echo "Creacion de usuaario exitosa!";
done