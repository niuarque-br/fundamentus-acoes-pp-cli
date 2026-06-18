.PHONY: build test lint install clean

build:
	go build -o bin/fundamentus-acoes-pp-cli ./cmd/fundamentus-acoes-pp-cli

test:
	go test ./...

lint:
	golangci-lint run

install:
	go install ./cmd/fundamentus-acoes-pp-cli

clean:
	rm -rf bin/

build-mcp:
	go build -o bin/fundamentus-acoes-pp-mcp ./cmd/fundamentus-acoes-pp-mcp

install-mcp:
	go install ./cmd/fundamentus-acoes-pp-mcp

build-all: build build-mcp
