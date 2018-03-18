VERSION = 3.1.4
RELEASE_DIR = dist
COMMAND_NAME = example

LDFLAGS = -ldflags "-s -w"

.PHONY: build-dirs build image clean

image: build
	docker build --rm --no-cache -t bumpversion_example:$(VERSION) .

build: build-dirs $(RELEASE_DIR)/$(COMMAND_NAME)

$(RELEASE_DIR)/$(COMMAND_NAME): $(shell find . -name '*.go')
	env GOOS=linux GOARCH=amd64 go build -o $@ $(LDFLAGS) .

build-dirs:
	mkdir -p $(RELEASE_DIR)

clean:
	rm -rf $(RELEASE_DIR)