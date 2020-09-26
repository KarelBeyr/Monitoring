#!/bin/bash

docker run -it --rm \
 -p 9093:9093 \
 --name=alertmanager-container \
 -v ${PWD}/configs/alertmanager.yml:/alertmanager.yml \
 prom/alertmanager \
 --config.file /alertmanager.yml