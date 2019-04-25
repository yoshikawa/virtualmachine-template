docker/build: ## docker build
	docker-compose build

docker/up: ## docker up
	docker-compose up -d

docker/start: ## docker start
	docker-compose start -d

docker/logs: ## docker logs
	docker-compose logs

docker/stop: ## docker stop
	docker-compose stop

docker/clean docker/rm docker/remove: ## docker clean
	docker-compose rm

docker/down: ## docker down
	docker-compose down

web/ash: ## web container ash
	docker-compose exec web ash

php/ash: ## php container ash
	docker-compose exec php ash

db/ash: ## db container ash
	docker-compose exec db ash

help: ## show help
	@grep -E '^([a-zA-Z/_-]+[ :])+.*## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*## "}; {n=split($$1, commands, " "); for(i in commands) { if (i == 1) {format="\033[36m%-24s"} else if (i > 1) {format="  \033[0m= \033[36m%-20s"}; if ((n > 1) && (i != n)) { format=format"\n" }; printf format, commands[i]} printf "\033[0m%s\n", $$2}'
