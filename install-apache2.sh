#!/bin/bash
echo "Menyiapkan Installasi Web server"
sudo apt-get update
echo "Melakukan Installasi Webserver"
sudo apt-get install -y apache2 php php-mysql
echo "Melakukan Installasi Database Server"
sudo apt-get install -y mysql-server
echo "Installasi Selesai"

apt-get install unzip
wget https://github.com/sdcilsy/sosial-media/archive/master.zip
unzip master.zip
sudo rm /var/www/html/*
sudo rm -R /var/www/html/*
sudo mv sosial-media-master/* /var/www/html
