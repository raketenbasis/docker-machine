#!/bin/ash

MACHINE_DIR=~/.docker/machine/machines/${DOCKER_MACHINE_NAME}

# setup docker-machine
mkdir -p /root/.docker/machine/certs
echo "${DOCKER_MACHINE_CA_CERT}" > /root/.docker/machine/certs/ca.pem
echo "${DOCKER_MACHINE_CA_CERT_KEY}" > /root/.docker/machine/certs/ca-key.pem
echo "${DOCKER_MACHINE_CERT}" > /root/.docker/machine/cert.pem
echo "${DOCKER_MACHINE_CERT_KEY}" > /root/.docker/machine/key.pem

docker-machine create --driver=none --url=tcp://${DOCKER_MACHINE_URL}:${DOCKER_MACHINE_PORT} ${DOCKER_MACHINE_NAME}

cp /root/.docker/machine/certs/* /root/.docker/machine/machines/${DOCKER_MACHINE_NAME}/

eval "$(docker-machine env ${DOCKER_MACHINE_NAME} --shell ash)"

exec "$@"
