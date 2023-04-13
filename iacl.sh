#!/bin/bash

echo "Criando diretórios"



mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando gruops de usuários"


groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários"

useradd guest -m -s /bin/bash -p $(openssl passwd -crypt 123) -G GRP_ADM
useradd guest1 -m -s /bin/bash -p $(openssl passwd -crypt 123) -G GRP_VEN
useradd guest2 -m -s /bin/bash -p $(openssl passwd -crypt 123) -G GRP_ADM
useradd guest3 -m -s /bin/bash -p $(openssl passwd -crypt 123) -G GRP_SEC


echo "Especificando permiss~es dos diretórios"

chown root:GRP_ADM/adm
chown root:GRP_VEN/ven
chown root:GRP_SEC/sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

chmod 777 /publico

echo "Fim"



