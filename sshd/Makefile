VERSION ?= $(shell cat ./VERSION)
IMAGE := frozengoats/ssh:$(VERSION)

.PHONY: build
build:
	docker build -t $(IMAGE) .

.PHONY: publish
publish:
	docker push -a $(IMAGE)