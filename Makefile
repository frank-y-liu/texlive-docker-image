
NAME:=frankliu1 
REPO:=latex
tag_custom="$(NAME)/$(REPO):ctan_custom"

.PHONY: build_custom

##build: build_ubuntu build_ctan build_custom
build: build_custom
rebuild: rebuild_custom

# build_ubuntu: Dockerfile.ubuntu 
# 	@docker build -f Dockerfile.ubuntu -t $(NAME)/$(REPO):ubuntu .

# build_ctan: Dockerfile.ctan 
# 	@docker build -f Dockerfile.ctan -t $(NAME)/$(REPO):ctan_full .

build_custom: Dockerfile.custom 
	@docker build -f Dockerfile.custom -t frankliu1/latex:ctan_custom .

rebuild_custom: Dockerfile.custom 
	@docker build --no-cache -f Dockerfile.custom -t frankliu1/latex:ctan_custom .

ALL: build

##
