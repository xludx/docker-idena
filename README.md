# ludx/idena

Idena docker image.

## Requirements

* Docker installed and running
  * [install Docker](https://docs.docker.com/engine/installation/)
* ...


## Quickstart

Start the Idena Node docker image with:
```sh
docker-compose up
```

Then download and run the Idena Client, it should connect to the previously started Idena Node.

Datadir will be located at ./data/idena, remember to make a backup of the keystore/nodekey.

## Usage

```sh
make build VERSION=0.13.4   - builds new image, downloads the given VERSION from github
make run                    - runs container until stopped, always starts the container when docker starts
make start                  - starts container
make stop                   - stops container
make rm                     - remove container
make pull                   - pull the latest image from docker.io
make logs                   - tails the logs (default level INFO)
```


## Attach bash into running container

```sh
docker exec -it idena bash -l
```
