NAMESPACE := chriswiegman
NAME := php
VERSION := 7.2-wordpress

all: \
	build \
	push

build:
	docker build --no-cache . -t $(NAMESPACE)/$(NAME):$(VERSION)

push:
	docker push $(NAMESPACE)/$(NAME):$(VERSION)

.PHONY: \
	all \
	build \
	push
