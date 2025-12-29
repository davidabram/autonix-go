.PHONY: build run test clean fmt vet lint help

BINARY_NAME=autonix-go

build:
	go build -o ${BINARY_NAME} main.go

run:
	go run main.go

test:
	go test -v ./...

clean:
	go clean
	rm -f ${BINARY_NAME}

fmt:
	go fmt ./...

vet:
	go vet ./...

lint:
	golangci-lint run

deps:
	go mod download
	go mod tidy

help:
	@echo "Available targets:"
	@echo "  build  - Build the application"
	@echo "  run    - Run the application"
	@echo "  test   - Run tests"
	@echo "  clean  - Remove build artifacts"
	@echo "  fmt    - Format code"
	@echo "  vet    - Run go vet"
	@echo "  lint   - Run golangci-lint"
	@echo "  deps   - Download and tidy dependencies"
	@echo "  help   - Display this help message"
