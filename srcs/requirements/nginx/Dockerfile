FROM alpine:3.16

COPY ./configure/default.conf /etc/nginx/conf.d/default.conf
COPY ./configure/nginx.conf	/etc/nginx/nginx.conf
COPY ./script/nginx.sh /tmp/nginx.sh

RUN apk update && \
	apk upgrade && \
	apk add nginx && \
	apk add openssl && \
	apk add dumb-init

RUN chmod +x /tmp/nginx.sh

ENTRYPOINT [ "/usr/bin/dumb-init", "--", "/tmp/nginx.sh" ]

EXPOSE 443
