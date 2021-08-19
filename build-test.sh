#!/bin/bash

docker build -t demo1 .
docker build --build-arg BASE=demo1 -t demo2 .
docker build --build-arg BASE=demo2 -t demo3 .

docker image ls demo1
docker image ls demo2
docker image ls demo3

docker image rm demo1
docker image rm demo2
docker image rm demo3
