#!/bin/bash

DBPASS=toor

echo "Removendo Repositórios"
add-apt-repository -r ppa:ondrej/apache2
add-apt-repository -r ppa:ondrej/php
add-apt-repository -r ppa:tiagohillebrandt/mailhog
rm -r /etc/apt/sources.list.d/nodesource.list

echo "Adicionando Repositórios"
add-apt-repository -y ppa:ondrej/apache2
add-apt-repository -y ppa:ondrej/php
add-apt-repository ppa:tiagohillebrandt/mailhog
curl -fsSL https://deb.nodesource.com/setup_lts.x | bash -
apt update
apt install -y software-properties-common apt-transport-https curl wget nano vim zip unzip openssl ffmpeg git supervisor certbot python3-certbot-apache


echo "Instalando Apache2"
apt install -y apache2
curl -O https://raw.githubusercontent.com/lidmo/lamp/main/apache2/envvars
mv -f envvars /etc/apache2/envvars
curl -O https://raw.githubusercontent.com/lidmo/lamp/main/apache2/conf-available/lidmo.conf
mv -f lidmo.conf /etc/apache2/conf-available/lidmo.conf
curl -O https://raw.githubusercontent.com/lidmo/lamp/main/apache2/virtualhost.sh
chmod +x virtualhost.sh
mv -f virtualhost.sh /usr/local/bin/a2vhost
a2enmod rewrite
a2enmod ssl
a2enconf lidmo
systemctl restart apache2

echo "Instalando PHP 5.6"
apt install -y php5.6 
apt install -y php5.6-common
apt install -y php5.6-curl
apt install -y php5.6-openssl
apt install -y php5.6-bcmath
apt install -y php5.6-mbstring
apt install -y php5.6-tokenizer
apt install -y php5.6-mysql
apt install -y php5.6-sqlite3
apt install -y php5.6-pgsql
apt install -y php5.6-redis
apt install -y php5.6-memcached
apt install -y php5.6-json
apt install -y php5.6-zip
apt install -y php5.6-xml
apt install -y php5.6-soap
apt install -y php5.6-gd
apt install -y php5.6-imagick
apt install -y php5.6-fileinfo
apt install -y php5.6-imap
apt install -y php5.6-cli

echo "Instalando PHP 7.0"
apt install -y php7.0 
apt install -y php7.0-common
apt install -y php7.0-curl
apt install -y php7.0-openssl
apt install -y php7.0-bcmath
apt install -y php7.0-mbstring
apt install -y php7.0-tokenizer
apt install -y php7.0-mysql
apt install -y php7.0-sqlite3
apt install -y php7.0-pgsql
apt install -y php7.0-redis
apt install -y php7.0-memcached
apt install -y php7.0-json
apt install -y php7.0-zip
apt install -y php7.0-xml
apt install -y php7.0-soap
apt install -y php7.0-gd
apt install -y php7.0-imagick
apt install -y php7.0-fileinfo
apt install -y php7.0-imap
apt install -y php7.0-cli

echo "Instalando PHP 7.1"
apt install -y php7.1 
apt install -y php7.1-common
apt install -y php7.1-curl
apt install -y php7.1-openssl
apt install -y php7.1-bcmath
apt install -y php7.1-mbstring
apt install -y php7.1-tokenizer
apt install -y php7.1-mysql
apt install -y php7.1-sqlite3
apt install -y php7.1-pgsql
apt install -y php7.1-redis
apt install -y php7.1-memcached
apt install -y php7.1-json
apt install -y php7.1-zip
apt install -y php7.1-xml
apt install -y php7.1-soap
apt install -y php7.1-gd
apt install -y php7.1-imagick
apt install -y php7.1-fileinfo
apt install -y php7.1-imap
apt install -y php7.1-cli

echo "Instalando PHP 7.2"
apt install -y php7.2 
apt install -y php7.2-common
apt install -y php7.2-curl
apt install -y php7.2-openssl
apt install -y php7.2-bcmath
apt install -y php7.2-mbstring
apt install -y php7.2-tokenizer
apt install -y php7.2-mysql
apt install -y php7.2-sqlite3
apt install -y php7.2-pgsql
apt install -y php7.2-redis
apt install -y php7.2-memcached
apt install -y php7.2-json
apt install -y php7.2-zip
apt install -y php7.2-xml
apt install -y php7.2-soap
apt install -y php7.2-gd
apt install -y php7.2-imagick
apt install -y php7.2-fileinfo
apt install -y php7.2-imap
apt install -y php7.2-cli

echo "Instalando PHP 7.3"
apt install -y php7.3 
apt install -y php7.3-common
apt install -y php7.3-curl
apt install -y php7.3-openssl
apt install -y php7.3-bcmath
apt install -y php7.3-mbstring
apt install -y php7.3-tokenizer
apt install -y php7.3-mysql
apt install -y php7.3-sqlite3
apt install -y php7.3-pgsql
apt install -y php7.3-redis
apt install -y php7.3-memcached
apt install -y php7.3-json
apt install -y php7.3-zip
apt install -y php7.3-xml
apt install -y php7.3-soap
apt install -y php7.3-gd
apt install -y php7.3-imagick
apt install -y php7.3-fileinfo
apt install -y php7.3-imap
apt install -y php7.3-cli

echo "Instalando PHP 7.4"
apt install -y php7.4 
apt install -y php7.4-common
apt install -y php7.4-curl
apt install -y php7.4-openssl
apt install -y php7.4-bcmath
apt install -y php7.4-mbstring
apt install -y php7.4-tokenizer
apt install -y php7.4-mysql
apt install -y php7.4-sqlite3
apt install -y php7.4-pgsql
apt install -y php7.4-redis
apt install -y php7.4-memcached
apt install -y php7.4-json
apt install -y php7.4-zip
apt install -y php7.4-xml
apt install -y php7.4-soap
apt install -y php7.4-gd
apt install -y php7.4-imagick
apt install -y php7.4-fileinfo
apt install -y php7.4-imap
apt install -y php7.4-cli

echo "Instalando PHP 8.0"
apt install -y php8.0 
apt install -y php8.0-common
apt install -y php8.0-curl
apt install -y php8.0-openssl
apt install -y php8.0-bcmath
apt install -y php8.0-mbstring
apt install -y php8.0-tokenizer
apt install -y php8.0-mysql
apt install -y php8.0-sqlite3
apt install -y php8.0-pgsql
apt install -y php8.0-redis
apt install -y php8.0-memcached
apt install -y php8.0-json
apt install -y php8.0-zip
apt install -y php8.0-xml
apt install -y php8.0-soap
apt install -y php8.0-gd
apt install -y php8.0-imagick
apt install -y php8.0-fileinfo
apt install -y php8.0-imap
apt install -y php8.0-cli

echo "Instalando PHP 8.1"
apt install -y php8.1
apt install -y php8.1-common
apt install -y php8.1-curl
apt install -y php8.1-openssl
apt install -y php8.1-bcmath
apt install -y php8.1-mbstring
apt install -y php8.1-tokenizer
apt install -y php8.1-mysql
apt install -y php8.1-sqlite3
apt install -y php8.1-pgsql
apt install -y php8.1-redis
apt install -y php8.1-memcached
apt install -y php8.1-json
apt install -y php8.1-zip
apt install -y php8.1-xml
apt install -y php8.1-soap
apt install -y php8.1-gd
apt install -y php8.1-imagick
apt install -y php8.1-fileinfo
apt install -y php8.1-imap
apt install -y php8.1-cli

echo "Instalando PHP 8.2"
apt install -y php8.2
apt install -y php8.2-common
apt install -y php8.2-curl
apt install -y php8.2-openssl
apt install -y php8.2-bcmath
apt install -y php8.2-mbstring
apt install -y php8.2-tokenizer
apt install -y php8.2-mysql
apt install -y php8.2-sqlite3
apt install -y php8.2-pgsql
apt install -y php8.2-redis
apt install -y php8.2-memcached
apt install -y php8.2-json
apt install -y php8.2-zip
apt install -y php8.2-xml
apt install -y php8.2-soap
apt install -y php8.2-gd
apt install -y php8.2-imagick
apt install -y php8.2-fileinfo
apt install -y php8.2-imap
apt install -y php8.2-cli

echo "Instalando MariaDB"
apt install -y mariadb-server mariadb-client
SECURE_MYSQL=$(expect -c "
set timeout 10
spawn mysql_secure_installation
expect \"Press y|Y for Yes, any other key for No:\"
send \"n\r\"
expect \"New password:\"
send \"$DBPASS\r\"
expect \"Re-enter new password:\"
send \"$DBPASS\r\"
expect \"Remove anonymous users? (Press y|Y for Yes, any other key for No)\"
send \"y\r\"
expect \"Disallow root login remotely? (Press y|Y for Yes, any other key for No)\"
send \"n\r\"
expect \"Remove test database and access to it? (Press y|Y for Yes, any other key for No)\"
send \"y\r\"
expect \"Reload privilege tables now? (Press y|Y for Yes, any other key for No) \"
send \"y\r\"
expect eof
")
echo "$SECURE_MYSQL"

echo "Instalando MailHog"
apt install -y mailhog

echo "Instalando Node"
apt install -y nodejs

echo "Instalando WordPress"
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv -f wp-cli.phar /usr/local/bin/wp

#curl -O https://raw.githubusercontent.com/wp-cli/wp-cli/master/utils/wp-completion.bash

echo "Instalando Composer"
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php composer-setup.php
php -r "unlink('composer-setup.php');"
mv -f composer.phar /usr/local/bin/composer

echo "Tudo OK! Já pode começar a trabalhar"
