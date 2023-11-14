#!/bin/bash

echo "IaC"

echo "Create groups..."

sudo groupadd GRP_ADM
sudo groupadd GRP_VEN
sudo groupadd GRP_SEC

echo "Create folders..."

sudo mkdir /publico
sudo mkdir /adm
sudo mkdir /ven
sudo mkdir /sec

echo "Specifing folders and groups permission..."

sudo chown root:GRP_ADM /adm
sudo chown root:GRP_VEN /ven
sudo chown root:GRP_SEC /sec

sudo chmod 777 /publico
sudo chmod 770 /adm
sudo chmod 770 /ven
sudo chmod 770 /sec

echo "Create users..."

sudo useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
sudo useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
sudo useradd joao_ -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

sudo useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
sudo useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
sudo useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

sudo useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
sudo useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
sudo useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo "Finish...
