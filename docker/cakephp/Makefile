DBNAME:=my_app

migrate/init:
	mysql -u root -h localhost --protocol tcp -e "create database \`$(DBNAME)\`" -p

migrate/up:
	docker-compose exec php bin/cake migrations migrate

migrate/down:
	docker-compose exec php bin/cake migrations rollback

migrate/status:
	docker-compose exec php bin/cake migrations status

migrate/seed:
	docker-compose exec php bin/cake migrations seed

docker/build:
	docker-compose build

docker/start:
	docker-compose up -d

docker/logs:
	docker-compose logs

docker/stop:
	docker-compose stop

docker/clean:
	docker-compose rm

web/bash:
	docker-compose exec web bash

db/bash:
	docker-compose exec db bash

php/bash:
	docker-compose exec php bash

composer/install:
	docker-compose exec php composer install
