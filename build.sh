set -e
docker build -t local/sds:${BUILD_TAG} -f sds/spine-route-lookup/Dockerfile .