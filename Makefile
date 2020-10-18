init: docker-down-clear docker-pull docker-build docker-up
up: docker-up
down: docker-down
restart: down up

docker-up:
	docker-compose up -d

docker-down:
	docker-compose down --remove-orphans

docker-down-clear:
	docker-compose down -v --remove-orphans

docker-pull:
	docker-compose pull

docker-build:
	docker-compose build

#tes:
#	eval $(docker-machine env Char)

#--remove-orphans помогает удалять сервисы если они вдруг были переименованы или удалены из docker-cmpose.yml