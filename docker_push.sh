#!/bin/bash
echo "$DOCKER_PASS" | docker login -u "$DOCKER_USERNAME" --password-stdin
https://116.202.28.78:5000/
docker tag bldb 116.202.28.78:5000/bldb
docker push 116.202.28.78:5000/bldb 
