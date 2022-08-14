#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Diretórios criados!"

echo "Criando grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Grupos criados!"

echo "Criando usuários e adicionando aos grupos..."

useradd carlos -c "Carlos" -m -s /bin/bash -p $(openssl passwd -5 Senha123) -G GRP_ADM
useradd maria -c "Maria" -m -s /bin/bash -p $(openssl passwd -5 Senha123) -G GRP_ADM
useradd joao -c "João" -m -s /bin/bash -p $(openssl passwd -5 Senha123) -G GRP_ADM

useradd debora -c "Debora" -m -s /bin/bash -p $(openssl passwd -5 Senha123) -G GRP_VEN 
useradd sebastiana -c "Sebastiana" -m -s /bin/bash -p $(openssl passwd -5 Senha123) -G GRP_VEN
useradd roberto -c "Roberto" -m -s /bin/bash -p $(openssl passwd -5 Senha123) -G GRP_VEN

useradd josefina -c "Josefina" -m -s /bin/bash -p $(openssl passwd -5 Senha123) -G GRP_SEC
useradd amanda -c "Amanda" -m -s /bin/bash -p $(openssl passwd -5 Senha123) -G GRP_SEC
useradd rogerio -c "Rogério" -m -s /bin/bash -p $(openssl passwd -5 Senha123) -G GRP_SEC

echo "Usuários criados e adicionandos aos grupos!"

echo "Dando permissões aos diretórios para que sejam acessados por seus respectivos grupos..."

chown root:root /publico
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Todas as operações foram realizadas!"
