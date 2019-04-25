docker/up: ## docker up
	docker-compose up

docker/build: ## docker build
	docker-compose build

docker/start: ## docker start
	docker-compose up -d

docker/logs: ## docker logs
	docker-compose logs

docker/stop: ## docker stop
	docker-compose stop

docker/clean: ## docker clean
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
	@grep -E '^[a-zA-Z/_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'
