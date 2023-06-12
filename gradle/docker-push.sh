#!/usr/bin/env bash

set +x
set -e
echo Buiding image...

PROJECT_VERSION=$(gradle printVersion -q)
if [[ "$PROJECT_VERSION" == *-SNAPSHOT ]]
then
    echo "INFO: No git tag found for this commit."
    echo "INFO: You see this message because no snapshot repository was set up for this project."
    echo "INFO: Therefore, pushing snapshots is not possible at this moment."
    echo "INFO: This build will be stopped here."
    echo "INFO: to avoid this message, execute: git bump locally."
else
  gradle dockerPush
  echo
  docker push ochmanskide/base.images.debian.11-bullseye.mandrel.22-3.java.17.mandrel-22-3-maven-3-8-6-java-17:latest
  echo
  docker images
fi
