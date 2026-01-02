fileName=$(shell pwd | awk -F'/' '{print tolower($$NF)}')

up:  server

create: composer artisan

composer:
	docker compose up composer

artisan:
	docker compose run --rm artisan migrate

server:
	docker compose up -d server

down:
	-docker compose down

rm:
	-docker rm mysql nginx composer php artisan node

rmi:
	-docker rmi node:latest artisan:latest mysql:latest nginx:stable-alpine \
	$(fileName)-composer:latest $(fileName)-php:latest \
	$(fileName)-artisan:latest $(fileName)-server:latest

clean: down rm rmi
