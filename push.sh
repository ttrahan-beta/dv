#!/bin/bash -e
if [ "$IS_PULL_REQUEST" != true ]; then
  sudo docker push $IMAGE_NAME:$BRANCH.$BUILD_NUMBER
  sudo docker push -f $IMAGE_NAME:$BRANCH.latest
else
  echo "skipping because it's a PR"
fi
