build:
	GOOS=linux GOARCH=arm64 go build -tags lambda.norpc -o bootstrap main.go
	zip go-check-this-api-jack.zip bootstrap
build-container:
	docker buildx build --platform linux/arm64 --provenance=false -t docker-image:go-check-this-api-jack .
