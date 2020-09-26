#!/bin/bash

docker run -d --restart always \
 -p 9090:9090 \
 --name=prometheus-container \
 -v ${PWD}/configs/:/etc/prometheus/ \
 -v /mnt/synology/prometheus:/prometheus \
 prom/prometheus \
 --storage.tsdb.path /prometheus \
 --config.file /etc/prometheus/prometheus.yml \
 --storage.tsdb.retention.time 90d \
 --web.enable-lifecycle