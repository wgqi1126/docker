#!/usr/bin/env bash

cd $(dirname $0)

docker build --no-cache -t wgqi1126/php-cli:latest .
