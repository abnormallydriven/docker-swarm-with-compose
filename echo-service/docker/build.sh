#!/usr/bin/env bash

mvn -f ../ package

cp -fr ../target/echoservice.jar echoservice.jar

docker build -t abnormallydriven/echoservice:latest \
    -t us.gcr.io/$GCLOUD_DOCKER_REGISTRY/abnormallydriven/echoservice:latest .