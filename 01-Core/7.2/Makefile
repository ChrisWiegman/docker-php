NAMESPACE := ufhweb
NAME := php
VERSION := 7.2

all: \
	build \
	push

build:
	docker build --no-cache . -t $(NAMESPACE)/$(NAME):$(VERSION)
	docker build . -t gitlab.ahc.ufl.edu:4567/webservices/dev-ops/docker/$(NAME):$(VERSION)

push:
	docker push $(NAMESPACE)/$(NAME):$(VERSION)
	docker push gitlab.ahc.ufl.edu:4567/webservices/dev-ops/docker/$(NAME):$(VERSION)

.PHONY: \
	all \
	build \
	push
