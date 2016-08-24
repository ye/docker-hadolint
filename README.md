# docker-hadolint
Dockerized pre-built hadolint with minimum footprint

## Build
```bash
$ docker build -t hadolint:1.2.1 .
$ docker images
REPOSITORY      TAG      IMAGE ID           CREATED             SIZE
hadolint      1.2.1      b266285044cc        2 hours ago         157.6 MB
$ docker run --entrypoint hadolint hadolint:1.2.1 -v
Haskell Dockerfile Linter v1.2.1
```

## Usage
```bash
docker run --rm -i hadolint:1.2.1 < Dockerfile
/dev/stdin:5 DL3008 Pin versions in apt get install. Instead of `apt-get install <package>` use `apt-get install <package>=<version>`
/dev/stdin:10 DL3020 Use COPY instead of ADD for files and folders
```