Instalação GLPI

1o) Remover repositório CDROM --> (Apenas no Debian)
# vim /etc/apt/sources.list
comentar a linha que chama o cdrom (utiliza-se # no início da linha para comentá-la)
2o) Instalar pré-requisitos obrigatórios
https://glpi-install.readthedocs.io/en/latest/prerequisites.html
# apt-get install apache2 php php-curl php-gd php-cli php-mbstring php-mysql php-xml -y
# apt-get install mariadb-server -y
3o) Colocar senha no mariadb ou mysql
# mysql_secure_installation
4o) Instalar pré-requisitos opcionais
# apt-get install php-cli php-cas php-imap php-ldap php-xmlrpc php-soap php-snmp php-apcu -y
5o) Instalar utilidades
# apt-get install zip unzip bzip2 unrar-free vim -y
6o) Início instalação GLPI
# cd /tmp
# wget https://github.com/glpi-project/glpi/releases/download/9.5.7/glpi-9.5.7.tgz
# tar -xvzf glpi-9.5.7.tgz
# cp -Rf glpi /var/www/html
7o) Permissões para a pasta do GLPI

# chmod 755 /var/www/html/* -Rf
# chown www-data. /var/www/html/* -Rf
8o) Criação do banco de dados do GLPI
# mysql -uroot -p
# mysql> create database glpi;
# mysql> create user 'glpi'@'localhost' identified by 'qualquersenhaforte';
# mysql> grant all on glpi.* to glpi identified by 'qualquersenhaforte';
# mysql> quit;
9o) Instalar a extensão php intl
# apt install php7.4-intl
# apt-get install php7.4-xsl
10o) Instalar as extensões zip e bz2
# apt install php7.4-zip php7.4-bz2 -y
11o) Configuração de segurança de diretórios do GLPi
“Acesso web ao diretório de arquivos não deveria ser permitido
Verifique a configuração do arquivo .htaccess e do servidor web.”
# vim /etc/apache2/conf-available/glpi.conf
<Directory "/var/www/html/glpi">
AllowOverride All
</Directory>
# a2enconf glpi.conf
# systemctl restart apache2
12o) Primeiro Login:

Login: glpi
Senha: glpi
13o) Remover o arquivo: install/install.php
# cd /var/www/html/glpi/install/
# rm install.php
