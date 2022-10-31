#!/bin/bash



echo "Iniciando servidor Apache"

apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip

echo "Copiando arquivos do Webserver"
cd /tmp

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip 

unzip mais.zip

cd linux-site-dio-main

cp * var/www/html/ -R

echo "Webserver finalizado"
