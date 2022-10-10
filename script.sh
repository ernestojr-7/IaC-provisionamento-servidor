
#!/bin/bash
#executar: ./script.sh
#lembrar de dar permissao de execusao ao script: chmod +x <path>/script.sh

echo "Atualizando o servidor..."

apt-get update && apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando e copiando os arquivos da aplicação..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -r * /var/www/html/

echo "FIM!!!"
