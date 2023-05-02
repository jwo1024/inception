# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jiwolee <jiwolee@student.42seoul.kr>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/04/21 19:14:54 by jiwolee           #+#    #+#              #
#    Updated: 2023/05/02 14:37:19 by jiwolee          ###   ########seoul.kr   #
#                                                                              #
# **************************************************************************** #

NAME = inception

COMPOSE_YML = ./srcs/docker-compose.yml

VOLUME_PATH = ./srcs/mount_volumes
# /home/jiwolee/data
# echo "127.0.0.1	jiwolee.42.fr" > /etc/hosts

all: $(NAME)

$(NAME):
	mkdir -p $(VOLUME_PATH)/mariadb/
	mkdir -p $(VOLUME_PATH)/wordpress/
	mkdir -p $(VOLUME_PATH)/nginx/
	echo "127.0.0.1	jiwolee.42.fr" > /etc/hosts
	docker-compose -f $(COMPOSE_YML) up

up:
	docker-compose -f $(COMPOSE_YML) up

down:
	docker-compose -f $(COMPOSE_YML) down

clean: down
	docker rm -f $(shell docker ps -qa)
	docker rmi $(shell docker image ls -qa)

fclean: clean
	docker volume rm $(shell docker volume ls -q)
	docker network rm $(shell docker network ls -q)

clear_volumes:
	rm -rf $(VOLUME_PATH)/*

re: fclean all

.PHONY: all up down clean fclean re clear_volumes