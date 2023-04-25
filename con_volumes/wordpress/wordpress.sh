#!/bin/sh

mkdir -p /var/www/html
wget https://wordpress.org/latest.tar.gz
tar -xvf latest.tar.gz
cp -r wordpress/* /var/www/html/

cp /tmp/wp-config.php /var/www/html/wp-config.php
rm /etc/php8/php-fpm.d/www.conf
cp -f /tmp/www.conf /etc/php8/php-fpm.d/www.conf

chmod -R +x /var/www/html/

/usr/sbin/php-fpm8 -R -F
