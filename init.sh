#!/bin/bash
docker rm -f $(docker ps -aq)
docker build . -t django -f project/Dockerfile
docker-compose -f project/docker-compose.yml up
