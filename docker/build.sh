#!/usr/bin/env bash

cp -fr ../target/echoservice.jar echoservice.jar

docker build -t abnormallydriven/swarmpost:latest .