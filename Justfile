BINARY_NAME := "autonix-go"

build:
	go build -o {{BINARY_NAME}} main.go

run:
	go run main.go

test:
	go test -v ./...

clean:
	go clean
	rm -f {{BINARY_NAME}}

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
	@just --list
