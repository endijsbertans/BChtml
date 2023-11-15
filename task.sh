#!/bin/bash

apt-get update
apt-get install -y docker.io
docker ps -a
docker run -d -p 8080:80 --name nginx nginx
docker cp my-source-code/. nginx:/usr/share/nginx/html/
# Your additional commands here