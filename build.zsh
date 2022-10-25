#!/usr/bin/env zsh

# This is a backup solution for people that don't know how to use Gradle.
# This script should be used only in last resort or for testing purposes
# because it does exactly the same job as `maven docker` command, just worse...
# please install SDKMAN, Java, and Gradle
# your life will be easier
# thank you

#docker login
cd $GITHUB/base/images/debian/11-bullseye/mandrel/22-2/java/17/mandrel-22-2-maven-3-8-6-java-17 || exit
DOCKER_HUB_HOST=ochmanskide
GROUP_ID=$(gradle rootProjectGroupRaw -q)
ARTIFACT_ID=$(gradle rootProjectNameRaw -q)
IMAGE_TAG=$(gradle rootProjectVersionRaw -q)

#GROUP_ID='base.images.debian.11-bullseye.mandrel.22-2.java.17'
#ARTIFACT_ID='mandrel-22-2-maven-3-8-6-java-17'
#IMAGE_TAG=$(gradle printVersion -q)

docker build -t "$DOCKER_HUB_HOST"/"$GROUP_ID"/"$ARTIFACT_ID":$IMAGE_TAG .
docker run --rm -ti --privileged --entrypoint /bin/bash "$DOCKER_HUB_HOST"/"$GROUP_ID"/"$ARTIFACT_ID":$IMAGE_TAG
docker image rm "$DOCKER_HUB_HOST"/"$GROUP_ID"/"$ARTIFACT_ID":$IMAGE_TAG
echo

if [[ "$IMAGE_TAG" == *-SNAPSHOT ]]
then
  export DOCKER_REPOSITORY='snapshots/'
else
  export DOCKER_REPOSITORY=''
fi

echo "docker build -t $DOCKER_HUB_HOST/$DOCKER_REPOSITORY$GROUP_ID/$ARTIFACT_ID:$IMAGE_TAG ."
echo "docker push $DOCKER_HUB_HOST/$DOCKER_REPOSITORY$GROUP_ID/$ARTIFACT_ID:$IMAGE_TAG"

docker tag $DOCKER_HUB_HOST/$DOCKER_REPOSITORY$GROUP_ID/$ARTIFACT_ID:$IMAGE_TAG $DOCKER_HUB_HOST/$DOCKER_REPOSITORY$GROUP_ID/$ARTIFACT_ID:latest
docker tag $DOCKER_HUB_HOST/$DOCKER_REPOSITORY$GROUP_ID/$ARTIFACT_ID:$IMAGE_TAG $DOCKER_HUB_HOST/graalvm-maven:mandrel-22-2-maven-3-8-6-java-17
docker tag $DOCKER_HUB_HOST/$DOCKER_REPOSITORY$GROUP_ID/$ARTIFACT_ID:$IMAGE_TAG $DOCKER_HUB_HOST/graalvm-maven:22-2-maven-3-8-6-java-17
docker tag $DOCKER_HUB_HOST/$DOCKER_REPOSITORY$GROUP_ID/$ARTIFACT_ID:$IMAGE_TAG $DOCKER_HUB_HOST/graalvm-maven:java-17
docker tag $DOCKER_HUB_HOST/$DOCKER_REPOSITORY$GROUP_ID/$ARTIFACT_ID:$IMAGE_TAG $DOCKER_HUB_HOST/graalvm-maven:java17
docker tag $DOCKER_HUB_HOST/$DOCKER_REPOSITORY$GROUP_ID/$ARTIFACT_ID:$IMAGE_TAG $DOCKER_HUB_HOST/graalvm-maven:jdk-17
docker tag $DOCKER_HUB_HOST/$DOCKER_REPOSITORY$GROUP_ID/$ARTIFACT_ID:$IMAGE_TAG $DOCKER_HUB_HOST/graalvm-maven:jdk17
docker tag $DOCKER_HUB_HOST/$DOCKER_REPOSITORY$GROUP_ID/$ARTIFACT_ID:$IMAGE_TAG $DOCKER_HUB_HOST/mandrel-maven:mandrel-22-2-maven-3-8-6-java-17
docker tag $DOCKER_HUB_HOST/$DOCKER_REPOSITORY$GROUP_ID/$ARTIFACT_ID:$IMAGE_TAG $DOCKER_HUB_HOST/mandrel-maven:22-2-maven-3-8-6-java-17
docker tag $DOCKER_HUB_HOST/$DOCKER_REPOSITORY$GROUP_ID/$ARTIFACT_ID:$IMAGE_TAG $DOCKER_HUB_HOST/mandrel-maven:java-17
docker tag $DOCKER_HUB_HOST/$DOCKER_REPOSITORY$GROUP_ID/$ARTIFACT_ID:$IMAGE_TAG $DOCKER_HUB_HOST/mandrel-maven:java17
docker tag $DOCKER_HUB_HOST/$DOCKER_REPOSITORY$GROUP_ID/$ARTIFACT_ID:$IMAGE_TAG $DOCKER_HUB_HOST/mandrel-maven:jdk-17
docker tag $DOCKER_HUB_HOST/$DOCKER_REPOSITORY$GROUP_ID/$ARTIFACT_ID:$IMAGE_TAG $DOCKER_HUB_HOST/mandrel-maven:jdk17

docker push $DOCKER_HUB_HOST/$DOCKER_REPOSITORY$GROUP_ID/$ARTIFACT_ID:$IMAGE_TAG
docker push $DOCKER_HUB_HOST/$DOCKER_REPOSITORY$GROUP_ID/$ARTIFACT_ID:latest
docker push $DOCKER_HUB_HOST/graalvm-maven:mandrel-22-2-maven-3-8-6-java-17
docker push $DOCKER_HUB_HOST/graalvm-maven:22-2-maven-3-8-6-java-17
docker push $DOCKER_HUB_HOST/graalvm-maven:java-17
docker push $DOCKER_HUB_HOST/graalvm-maven:java17
docker push $DOCKER_HUB_HOST/graalvm-maven:jdk-17
docker push $DOCKER_HUB_HOST/graalvm-maven:jdk17
docker push $DOCKER_HUB_HOST/mandrel-maven:mandrel-22-2-maven-3-8-6-java-17
docker push $DOCKER_HUB_HOST/mandrel-maven:22-2-maven-3-8-6-java-17
docker push $DOCKER_HUB_HOST/mandrel-maven:java-17
docker push $DOCKER_HUB_HOST/mandrel-maven:java17
docker push $DOCKER_HUB_HOST/mandrel-maven:jdk-17
docker push $DOCKER_HUB_HOST/mandrel-maven:jdk17


# in case this is the latest Java Candidate (current == 17)
docker tag $DOCKER_HUB_HOST/$DOCKER_REPOSITORY$GROUP_ID/$ARTIFACT_ID:$IMAGE_TAG $DOCKER_HUB_HOST/graalvm-maven:latest
docker tag $DOCKER_HUB_HOST/$DOCKER_REPOSITORY$GROUP_ID/$ARTIFACT_ID:$IMAGE_TAG $DOCKER_HUB_HOST/mandrel-maven:latest
docker push $DOCKER_HUB_HOST/graalvm-maven:latest
docker push $DOCKER_HUB_HOST/mandrel-maven:latest
