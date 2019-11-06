build:
	@[ "${VERSION}" ] || ( echo ">> VERSION is not set"; exit 1 )
	time docker build --no-cache --build-arg VERSION=$(VERSION) --build-arg CONTAINER_TIMEZONE=Europe/Helsinki -t ludx/idena:$(VERSION) -t docker.io/ludx/idena:$(VERSION) -t docker.io/ludx/idena:latest .

run:
	docker run --name idena -p 40403:40403 -p 40404:40404 -p 9009:9009 |
	 -v /Users/juha/Work/other/idena/data:/root/.idena |
	 docker.io/ludx/idena:latest

start:
	docker start idena

stop:
	docker stop idena

rm:
	docker rm -f idena

logs:
	docker logs -f --tail 1000 idena

push:
	@[ "${VERSION}" ] || ( echo ">> VERSION is not set"; exit 1 )
	docker push docker.io/ludx/idena:$(VERSION)
	docker push docker.io/ludx/idena:latest

