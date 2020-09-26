#!/bin/bash

docker run -d --restart always \
 -p 9093:9093 \
 --name=alertmanager-container \
 -v ${PWD}/configs/alertmanager.yml:/alertmanager.yml \
 prom/alertmanager \
 --config.file /alertmanager.yml