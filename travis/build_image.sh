#!/bin/bash
base_image="girol/flask-aws"

docker build -t "${base_image}:latest" \
    -t "${base_image}:${IMAGE_ID}" \
    --build-arg greet=${GREETING} .

docker push "${base_image}:latest"
docker push "${base_image}:${IMAGE_ID}"