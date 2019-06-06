#!/usr/bin/env bash

DOCKER_DIR=$PWD;

sed -i 's/http:\/\/api.dev.joind.in/http:\/\/api/' $DOCKER_DIR/joindin-web2/config/config.php
sed -i 's/127.0.0.1/redis/' $DOCKER_DIR/joindin-web2/config/config.php
sed -i 's/localhost/mail/' $DOCKER_DIR/joindin-api/src/config.php
sed -i 's/25/1025/' $DOCKER_DIR/joindin-api/src/config.php
