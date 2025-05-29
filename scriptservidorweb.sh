#!/bin/bash

echo "Atualizando servidor Linux"

apt-get update
apt-get upgrade -y
apt-get install apache2 -y
aptget install unzip -y

echo "Baixando aplicação"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main

cp -R * /var/www/html/
