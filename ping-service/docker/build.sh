#!/usr/bin/env bash

mvn -f ../ package

cp -fr ../target/pingservice.jar pingservice.jar

docker build -t abnormallydriven/pingservice:latest \
    -t us.gcr.io/$GCLOUD_DOCKER_REGISTRY/abnormallydriven/pingservice:latest .

gcloud docker push -- us.gcr.io/$GCLOUD_DOCKER_REGISTRY/abnormallydriven/pingservice