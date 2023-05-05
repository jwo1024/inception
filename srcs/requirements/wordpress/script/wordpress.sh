#!/bin/sh

WP_DIR_PATH=/var/www/html
chmod -R +x /var/www/html/
set -e

if [ ! -f /var/www/html/wp-config.php ]; then

mkdir -p $WP_DIR_PATH

wp core download --path=$WP_DIR_PATH
wp config create --path=$WP_DIR_PATH --dbname=$WORDPRESS_DB_NAME --dbuser=$WORDPRESS_DB_USER --dbpass=$WORDPRESS_DB_PASSWORD --dbhost=$WORDPRESS_DB_HOST --dbprefix=$WORDPRESS_TABLE_PREFIX
wp core install --path=$WP_DIR_PATH --url=$MY_DOMAIN --title=$WORDPRESS_TILTE --admin_user=$WORDPRESS_ADMIN_USER --admin_password=$WORDPRESS_ADMIN_PASSWORD --admin_email=$WORDPRESS_ADMIN_EMAIL
wp user create  --path=$WP_DIR_PATH $WORDPRESS_USER $WORDPRESS_USER_EMAIL --role=author --user_pass=$WORDPRESS_USER_PASSWORD


wp plugin update --all --path=$WP_DIR_PATH

fi

/usr/sbin/php-fpm8 -R -F