#!/bin/bash

docker run -d --restart always \
 --name pushgate-container \
 -p 9091:9091 \
 prom/pushgateway
