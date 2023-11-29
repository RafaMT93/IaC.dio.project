#!/bin/bash

echo "update server..."
sudo apt-get update
sudo apt-get upgrade -y

echo "install apache and unzip..."
sudo apt-get install apache2 -y
sudo apt-get install unzip -y

echo "download and copying files..."
sudo cd /tmp
sudo wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
sudo unzip main.zip
sudo cd linux-site-dio-main
sudo cp -R * /var/www/html/
