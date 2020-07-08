#!/bin/bash 

export BUILD_TAG=latest

cd ..

./build.sh

docker tag local/sds:latest nhsdev/nia-mhs-route:0.0.2

docker push nhsdev/nia-mhs-route:0.0.2
