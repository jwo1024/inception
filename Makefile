# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jiwolee <jiwolee@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/04/21 19:14:54 by jiwolee           #+#    #+#              #
#    Updated: 2023/04/21 19:33:25 by jiwolee          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

DOCKER_COMPOSE = docker-compose
COMPOSE_YML = docker-compose.yml

all: 
	$(DOCKER_COMPOSE) up

down:
	docker compose down

clean: down
	rm -rf ./mount_volumes/*
	docker rmi inception_wordpress

fclean:
