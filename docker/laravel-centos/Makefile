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

web/bash: ## web container bash
	docker-compose exec web bash

php/bash: ## php container bash
	docker-compose exec php bash

db/bash: ## db container bash
	docker-compose exec db bash

help: ## show help
	@grep -E '^[a-zA-Z/_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'
