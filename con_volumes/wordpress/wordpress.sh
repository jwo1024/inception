#!/bin/sh

mkdir -p /var/www/html
wget https://wordpress.org/latest.tar.gz
tar -xvf latest.tar.gz
cp -r wordpress/* /var/www/html/


wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
# mv to /usr/local/bin/wp after download i think have to +x chmod? 

cp wp-cli.phar /usr/local/bin/wp

cp /tmp/wp-config.php /var/www/html/wp-config.php
rm /etc/php8/php-fpm.d/www.conf
cp /tmp/www.conf /etc/php8/php-fpm.d/www.conf # 왜 안됨..

sleep 10000
chmod -R +x /var/www/html/

/usr/sbin/php-fpm8 -R -F

#hostname -i ?

