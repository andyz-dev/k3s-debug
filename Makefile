IMAGE=docker.io/andyzdev/k3s-debug:latest

docker-image:
	docker build -t $(IMAGE) .

push:
	docker push $(IMAGE)

login:
	docker login --username=andyzdev
