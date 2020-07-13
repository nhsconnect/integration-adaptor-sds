#!/bin/bash 

export BUILD_TAG=latest

cd ..

./build.sh

docker tag local/sds:latest nhsdev/nia-spine-directory-service:1.0.0

docker push nhsdev/nia-spine-directory-service:1.0.0
