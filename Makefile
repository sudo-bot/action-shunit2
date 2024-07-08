.PHONY: update-tags docker-build

IMAGE_TAG ?= action-shunit2

# All (built on the base image):
# - linux/386
# - linux/amd64
# - linux/arm/v6
# - linux/arm/v7
# - linux/arm64/v8
# - linux/riscv64
PLATFORM ?= linux/amd64

ACTION ?= load
PROGRESS_MODE ?= plain

docker-build:
	# https://github.com/docker/buildx#building
	docker buildx build \
		--tag $(IMAGE_TAG) \
		--progress $(PROGRESS_MODE) \
		--platform $(PLATFORM) \
		--build-arg VCS_REF=`git rev-parse HEAD` \
		--build-arg BUILD_DATE=`date -u +"%Y-%m-%dT%H:%M:%SZ"` \
		--$(ACTION) \
		./docker

update-tags:
	git checkout main
	git tag -s -f -a -m "latest series" latest
	git checkout -
	git push origin refs/tags/latest -f
