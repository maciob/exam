#!/bin/bash
docker rm -f $(docker ps -aq)
docker build -t django .
docker-compose up
