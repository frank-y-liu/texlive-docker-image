NAME = frankliu
REPO = latex
IMAGE = $(NAME)/$(REPO)
TAG = ubuntu

.PHONY: build build_ubuntu

build: build_ubuntu

build_ubuntu: Dockerfile.ubuntu
	@docker build -f Dockerfile.ubuntu -t $(IMAGE):$(TAG) .

default: build
