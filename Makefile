demo: ## Launch local version for development (http://localhost:8080/)
	docker-compose up --build

demo-kill: ## Kill local version for development
	docker-compose down

image: ## Build local image and push to Docker Hub
	docker build -t naturecons/shinyproxy:latest .
	docker push naturecons/shinyproxy:latest

reset: ## Delete all local Docker containers and images
	docker rm $(docker ps -aq) || \
	docker rmi -f $(docker images -aq)

help: ## List available targets
	@grep -E '^[a-zA-Z0-9_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-12s\033[0m %s\n", $$1, $$2}'

.PHONY: demo demo-kill image reset help
