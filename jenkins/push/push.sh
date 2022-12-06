#!/bin/bash
echo "****push***"

IMAGE="maven-project"

echo "***login***"

docker login -u bitop -p $PASS

echo "***tagging image****"
docker tag $IMAGE:$BUILD_TAG bitop/$IMAGE:$BUILD_TAG
echo "***pushing image***"
docker push bitop/$IMAGE:$BUILD_TAG

