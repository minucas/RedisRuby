DOCKER_IMAGE=minhw/RedisRuby

all: image

image:
	docker build -t $(DOCKER_IMAGE) .
