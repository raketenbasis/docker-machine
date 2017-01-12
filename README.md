usage:

    docker run --rm \
        -e DOCKER_MACHINE_NAME=<machine name (default: default)> \
        -e DOCKER_MACHINE_URL=<ip address of target machine> \
        -e DOCKER_MACHINE_PORT=<target machine docker port (default: 2376)> \
        -e DOCKER_MACHINE_CA_CERT=<contents of ca.pem> \
        -e DOCKER_MACHINE_CA_CERT_KEY=<contents of ca-key.pem> \
        -e DOCKER_MACHINE_CERT=<contents of cert.pem> \
        -e DOCKER_MACHINE_CERT_KEY=<contents of key-pem> \
        raketenbasis/docker-machine \
        docker run -d --name nginx -p 80:80 nginx:latest
