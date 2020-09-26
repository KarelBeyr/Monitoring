#!/bin/bash

ID=$(id -u) #saves your user id in the ID variable
# --user $ID \

docker run -it --rm \
 --name=grafana-container \
 -v ${PWD}/data:/var/lib/grafana \
 -p 3000:3000 \
 grafana/grafana-arm32v7-linux