#!/bin/sh

set -e

openssl req -x509 -nodes \
		-days 365 \
		-newkey rsa:2048 \
		-keyout /etc/ssl/private/server_pkey.pem \
		-out /etc/ssl/certs/server.crt \
		-subj "/C=KR/ST=Seoul/O=42Seoul/OU=jiwolee/CN=inception/";

chown nginx /etc/ssl/private/server_pkey.pem
chown nginx /etc/ssl/certs/server.crt

nginx -g "daemon off;";
