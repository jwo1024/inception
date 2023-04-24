# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jiwolee <jiwolee@student.42seoul.kr>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/04/21 19:14:54 by jiwolee           #+#    #+#              #
#    Updated: 2023/04/23 23:49:01 by jiwolee          ###   ########seoul.kr   #
#                                                                              #
# **************************************************************************** #

DOCKER_COMPOSE = docker-compose
COMPOSE_YML = docker-compose.yml

IMAGES = inception-wordpress \
		 inception-nginx \
		 mariadb

all: 
	$(DOCKER_COMPOSE) up

down:
	docker compose down

clean: down
	rm -rf ./mount_volumes/* 
	docker rmi $(IMAGES)

fclean: clean
	docker rm -r $(docker ps -qa)
