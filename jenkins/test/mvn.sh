#!/bin/bash

echo "***************************"
echo "** Testing jar ***********"
echo "***************************"

WORKSPACE=/Users/idscomercial/jenkins/jenkins-data/pipeline

#docker run --rm  -v  $WORKSPACE/java-app:/app -v /root/.m2/:/root/.m2/ -w /app maven:3-alpine "$@"
docker run --rm -v   $WORKSPACE/java-app:/app -v /Users/idscomercial/.m2:/root/.m2/ -w /app  maven:3-alpine "$@"
