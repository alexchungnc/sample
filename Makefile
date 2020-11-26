
NAME=sample

.DEFAULT_GOAL := all

build:
	echo "Building sample"
	docker build -f cmd/sample/Dockerfile --tag ${NAME} .

push:
	docker tag ${NAME} alexchungnc/${NAME}
	docker push alexchungnc/${NAME}

all: build push
