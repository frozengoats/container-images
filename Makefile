VERSION ?= $(shell cat ./VERSION)
IMAGE := frozengoats/$(shell basename $$(pwd))
IMAGE_AND_TAG := $(IMAGE):$(VERSION)

.PHONY: build
build:
	docker build -t $(IMAGE_AND_TAG) .

.PHONY: publish
publish:
	docker push -a $(IMAGE)