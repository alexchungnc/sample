
NAME=alexchungnc/sample:latest

.DEFAULT_GOAL := all

build:
	echo "Building sample docker image"
	docker build -f cmd/sample/Dockerfile --tag ${NAME} .

build2:
	echo "Building sample go binary separate from building docker image"
	GOOS=linux go build -o sample cmd/sample/main.go
	docker build -f cmd/sample/Dockerfile2 --tag ${NAME}2 .
	rm sample
push:
	docker push ${NAME}

all: build push
