#!/bin/bash
echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp -i /opt/prod /tmp/.auth ubuntu@ec2-3-82-149-71.compute-1.amazonaws.com:/tmp/.auth
scp -i /opt/prod ./jenkins/deploy/publish.sh ubuntu@ec2-3-82-149-71.compute-1.amazonaws.com:/tmp/publish


ssh -i /opt/prod ubuntu@ec2-3-82-149-71.compute-1.amazonaws.com "/tmp/publish"
