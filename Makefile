TAG := ysakashita/kubectl:v1.22.0
PLATFORM := linux/amd64,linux/arm64,linux/arm/v7

.PHONY: build
build:
	docker buildx build . -t $(TAG) --platform $(PLATFORM) --push
