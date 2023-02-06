
GOOS ?= $(shell go env GOOS)
GOARCH ?= $(shell go env GOARCH)


build:
	go build -o out/greeting-$(GOOS)-$(GOARCH) .

buildx:
	GOOS=linux GOARCH=amd64 make build
	GOOS=linux GOARCH=arm64 make build
	GOOS=darwin GOARCH=amd64 make build
	GOOS=darwin GOARCH=arm64 make build

clean:
	rm -rf out/