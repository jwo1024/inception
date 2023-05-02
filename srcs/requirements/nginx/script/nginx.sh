#!/bin/sh

set -e

openssl req -x509 -nodes \
		-days 365 \
		-newkey rsa:2048 \
		-keyout /etc/ssl/private/server_pkey.pem \
		-out /etc/ssl/certs/server.crt \
		-subj "/C=KR/ST=Seoul/O=42Seoul/OU=jiwolee/CN=inception/";

chown nginx /etc/ssl/certs/server.crt
chown nginx /etc/ssl/private/server_pkey.pem

nginx -g "daemon off;";

#	openssl req -newkey rsa:4096 -days 365 -nodes -x509 -subj "/C=KR/ST=Seoul/L=Seoul/O=42Seoul/OU=Lee/CN=localhost" -keyout localhost.dev.key -out localhost.dev.crt 

#chown nginx /etc/ssl/nginx-selfsigned.crt
#chown nginx /etc/ssl/nginx-selfsigned.key    
