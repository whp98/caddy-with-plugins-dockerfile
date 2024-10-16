#!/bin/bash
version=v1.0.2
image_name=whp98/caddy-with-plugins
docker rmi $image_name:$version
docker build --no-cache -t $image_name:$version --network host .\
 --build-arg http_proxy=http://127.0.0.1:20003 \
 --build-arg https_proxy=http://127.0.0.1:20003
docker push $image_name:$version