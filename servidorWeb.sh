#!/bin/bash

# Atualiza servidor
echo "Atualizando Servidor..."
apt update
apt upgrade -y
echo "Servidor Atualizado com Sucesso."

# Instalação do Apache
echo "Instalando apache..."
apt install apache2 -y
systemctl restart apache2
echo "Instalaçaõ concluida."

# Instalação unzip e Wget
echo "Instalando unzip e wget..."
apt install unzip -y
apt install wget -y
echo "Instalaçaõ concluida."

#Criando pastas para baixar aplicação
echo "Criando pasta temp..."
cd /
mkdir tmp
cd /tmp
echo "Pasta criada com Sucesso."

# Baixando e extraindo aplicação
echo "Baixando e extraindo aplicação..."
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
echo "Operação realizada com Sucesso."

# Copaindo arquivos da aplicação para a pasta do servidor apache
echo "Movendo arquivos para a pasta do apache..."
cp -r -f * /var/www/html/index.html
echo "Operação realizada com Sucesso."

