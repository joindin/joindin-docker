#!/usr/bin/env bash

DOCKER_DIR=$PWD;

sed -i 's/https:\/\/api.joind.in/http:\/\/api/' $DOCKER_DIR/joindin-web2/config/config.php
sed -i 's/127.0.0.1/redis/' $DOCKER_DIR/joindin-web2/config/config.php
