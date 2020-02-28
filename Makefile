
NAME = frankliu1 
REPO = latex

.PHONY: build build_ubuntu build_ctan

build: build_ubuntu build_ctan build_custom

build_ubuntu: Dockerfile.ubuntu 
	@docker build -f Dockerfile.ubuntu -t $(NAME)/$(REPO):ubuntu .

build_ctan: Dockerfile.ctan 
	@docker build -f Dockerfile.ctan -t $(NAME)/$(REPO):ctan_full .

build_custom: Dockerfile.custom 
	@docker build -f Dockerfile.custom -t $(NAME)/$(REPO):ctan_custom .

default: build

