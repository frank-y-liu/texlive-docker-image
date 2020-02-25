NAME = carracu123
REPO_C = latex_ctan
REPO_U = latex
TAG = ubuntu

.PHONY: build build_ubuntu build_ctan

build: build_ctan build_ubuntu 

build_ubuntu: Dockerfile.ubuntu
	@docker build -f Dockerfile.ubuntu -t $(NAME)/$(REPO_U):$(TAG) .

build_ctan: Dockerfile.ctan
	@docker build -f Dockerfile.ctan -t $(NAME)/$(REPO_C):$(TAG) .

default: build
