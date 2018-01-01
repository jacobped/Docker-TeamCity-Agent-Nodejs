#!/bin/bash

if [ ! -z "$DOCKER_OPTS" ]; then
    echo "DOCKER_OPTS=\"$DOCKER_OPTS\"" >> /etc/default/docker
    #service docker stop
    #service docker start
fi
