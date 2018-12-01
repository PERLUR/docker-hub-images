#!/usr/bin/env bash

DOCKER_PROJECT_PREFIX="perlur"

IMAGE_NAME="centos-base"
BASE_NAME=${DOCKER_PROJECT_PREFIX}-${IMAGE_NAME}
docker build -t ${BASE_NAME} ./${IMAGE_NAME}

IMAGE_NAME="centos-nginx"
BASE_NAME=${DOCKER_PROJECT_PREFIX}-${IMAGE_NAME}
docker build -t ${BASE_NAME} ./${IMAGE_NAME}
docker build -t perlur/centos-base ./centos-nginx\

IMAGE_NAME="centos-nginx-php-fpm"
BASE_NAME=${DOCKER_PROJECT_PREFIX}-${IMAGE_NAME}
docker build -t ${BASE_NAME} ./${IMAGE_NAME}

IMAGE_NAME="centos-nginx-php-fpm"
BASE_NAME=${DOCKER_PROJECT_PREFIX}-${IMAGE_NAME}
docker build -t ${BASE_NAME} ./${IMAGE_NAME}

IMAGE_NAME="debian-odoo"
BASE_NAME=${DOCKER_PROJECT_PREFIX}-${IMAGE_NAME}
DOCKER_IMAGE_TAG="12.0"
docker build -t ${BASE_NAME}:${DOCKER_IMAGE_TAG} ./${IMAGE_NAME}/${DOCKER_IMAGE_TAG}