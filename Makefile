# Docker commands
## launch local version for development
## view it at: http://localhost:8080/
demo:
	docker-compose up --build

demo-kill:
	docker-compose down

## create local image and push to docker
image:
	docker build -t naturecons/shinyproxy:latest .
	docker push naturecons/shinyproxy:latest

## delete all local containers and images
reset:
	docker rm $(docker ps -aq) || \
	docker rmi -f $(docker images -aq)

.PHONY: image reset
