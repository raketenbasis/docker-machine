# Usage

```
docker run --rm -it \
    -e DOCKER_MACHINE_NAME=<machine name (default: default)> \
    -e DOCKER_MACHINE_URL=<ip address of target machine> \
    -e DOCKER_MACHINE_PORT=<target machine docker port (default: 2376)> \
    -e DOCKER_MACHINE_CA_CERT="$(cat ca.pem )" \
    -e DOCKER_MACHINE_CA_CERT_KEY="$(cat ca-key.pem )" \
    -e DOCKER_MACHINE_CERT="$(cat cert.pem )" \
    -e DOCKER_MACHINE_CERT_KEY="$(cat key.pem )" \
    raketenbasis/docker-machine bash
```

## About certificates

Docker Machine use the same certificates for all created machines, so if you want to share them (e.g. in CI) for connecting to machine created by you, create machine with option `--storage-path` with path specific for this specific machine, so it will create certificates only for this machine.

Example:
```
docker-machine --storage-path ~/.docker/machine/machines/citest/ create --driver digitalocean citest
```
