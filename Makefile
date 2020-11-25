build:
	echo "Building sample"
	docker build -f cmd/sample/Dockerfile --tag sample cmd/sample
