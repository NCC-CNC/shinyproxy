# Docker commands
## create local image and push to docker
image:
	docker build -t naturecons/shinyproxy:latest .
	docker push naturecons/shinyproxy:latest

## delete all local containers and images
reset:
	docker rm $(docker ps -aq) || \
	docker rmi -f $(docker images -aq)

.PHONY: image reset
