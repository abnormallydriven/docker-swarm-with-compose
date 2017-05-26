#!/usr/bin/env bash

mvn -f ../ package

cp -fr ../target/pingservice.jar pingservice.jar

docker build -t abnormallydriven/pingservice:latest .