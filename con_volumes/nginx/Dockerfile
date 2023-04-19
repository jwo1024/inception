FROM alpine:3.14

RUN apk update && \
	apk add --no-cache nginx

COPY ./default.conf /etc/nginx/conf.d

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
