# Debian-based Mandrel image optimized for building Quarkus projects

last updated: Mon Oct 24 19:15:44 CEST 2022  
author: Lukasz Ochmanski (github@ochmanski.de)  

![Docker Image Version](https://img.shields.io/docker/v/ochmanskide/base.images.debian.11-bullseye.mandrel.22-2.java.17.mandrel-22-2-maven-3-8-6-java-17/latest?label=latest&kill_cache=1) 
[![Docker Image Size](https://badgen.net/docker/size/ochmanskide/base.images.debian.11-bullseye.mandrel.22-2.java.17.mandrel-22-2-maven-3-8-6-java-17/latest?icon=docker&label=image%20size)](https://hub.docker.com/ochmanskide/mandrel-maven/latest/)  

**Project details:**  
![GitHub](https://img.shields.io/github/license/ochmanskide/base.images.debian.11-bullseye.mandrel.22-2.java.17.mandrel-22-2-maven-3-8-6-java-17)
![java17](https://img.shields.io/badge/Java-17-brightgreen) 
![maven](https://img.shields.io/badge/Maven-3.8.6-brightgreen) 
![graalvm](https://img.shields.io/badge/GraalVM-22.2.0-brightgreen) 
![mandrel](https://img.shields.io/badge/Mandrel-22.2.0-brightgreen) 
![distribution](https://img.shields.io/badge/Distribution-Debian-brightgreen) 
![arch](https://img.shields.io/badge/Arch-amd64-brightgreen)  
&nbsp;  

## About
Opinionated docker image based on the [Debian](https://www.debian.org/) docker image [`debian:stable-slim`](https://hub.docker.com/_/debian?tab=tags&name=stable-slim) to
build native Linux binaries from Java [Gradle](https://gradle.org) projects using [GraalVM](https://www.graalvm.org/) [native-image](https://www.graalvm.org/reference-manual/native-image/) feature.  

Mandrel focuses on GraalVM's native-image component in order to provide an easy way for Quarkus users to generate native images for their applications.  
Developers using Quarkus should be able to go all the way from Java source code to lean, native, platform-dependent applications running on Linux.  
This capability is vital for deploying to containers in a cloud-native application development model. 


&nbsp;
&nbsp;


## 1. Supported tags and respective `Dockerfile` links
As always, it is recommended to use a specific fixed version of the software, for example use a tag `1.0.6` instead of `latest`.  
Semantic versioning tags are immutable and they provide reproducible builds.  
Please do not use floating tags in production. They are only for development purposes.  
Each floating tag in this docker registry (docker tag) corresponds to the semantic versioning tag in another docker registry. Simply look up the digest of the tag and compare them.  
This means that some images are duplicated across different docker registries. This is intended.  
Since fixed versions are present only in one of these registries, there is no question which image to use.  
Always search for the most specific, therefore the longest path, with the specific semantic versioning tag.  
It is discouraged to use floating tags, but I provided them for an easy and quick start.  
Once you get familiar with the image, you may replace the path with the full path and the fixed tag, at any moment.  
  
### 1.1. Dockerfile source
The following table contains links to the Dockerfile in git repository, from which the Docker image was built. Feel free to look at source by clicking the link below.  
For the convenience of users I provided 6 floating tags for Java 11 and 7 floating tags for Java 17:  

| Java   |      GraalVM      |  Maven | Dockerfile |
|----------|:-------------:|------:|:------|
| 17 | 22.2 | 3.8.6 | [`mandrel-22-2-maven-3-8-6-java-17`](https://github.com/ochmanskide/base.images.debian.11-bullseye.mandrel.22-2.java.17.mandrel-22-2-maven-3-8-6-java-17/blob/main/Dockerfile), [`22-2-maven-3-8-6-java-17`](https://github.com/ochmanskide/base.images.debian.11-bullseye.mandrel.22-2.java.17.mandrel-22-2-maven-3-8-6-java-17/blob/main/Dockerfile), [`java-17`](https://github.com/ochmanskide/base.images.debian.11-bullseye.mandrel.22-2.java.17.mandrel-22-2-maven-3-8-6-java-17/blob/main/Dockerfile), [`java17`](https://github.com/ochmanskide/base.images.debian.11-bullseye.mandrel.22-2.java.17.mandrel-22-2-maven-3-8-6-java-17/blob/main/Dockerfile), [`jdk-17`](https://github.com/ochmanskide/base.images.debian.11-bullseye.mandrel.22-2.java.17.mandrel-22-2-maven-3-8-6-java-17/blob/main/Dockerfile), [`jdk17`](https://github.com/ochmanskide/base.images.debian.11-bullseye.mandrel.22-2.java.17.mandrel-22-2-maven-3-8-6-java-17/blob/main/Dockerfile), [`latest`](https://github.com/ochmanskide/base.images.debian.11-bullseye.mandrel.22-2.java.17.mandrel-22-2-maven-3-8-6-java-17/blob/main/Dockerfile)   |
| 11 |    22.2   |   3.8.6 | [`mandrel-22-2-maven-3-8-6-java-11`](https://github.com/ochmanskide/base.images.debian.11-bullseye.mandrel.22-2.java.11.mandrel-22-2-maven-3-8-6-java-11/blob/main/Dockerfile), [`22-2-maven-3-8-6-java-11`](https://github.com/ochmanskide/base.images.debian.11-bullseye.mandrel.22-2.java.11.mandrel-22-2-maven-3-8-6-java-11/blob/main/Dockerfile), [`java-11`](https://github.com/ochmanskide/base.images.debian.11-bullseye.mandrel.22-2.java.11.mandrel-22-2-maven-3-8-6-java-11/blob/main/Dockerfile), [`java11`](https://github.com/ochmanskide/base.images.debian.11-bullseye.mandrel.22-2.java.11.mandrel-22-2-maven-3-8-6-java-11/blob/main/Dockerfile), [`jdk-11`](https://github.com/ochmanskide/base.images.debian.11-bullseye.mandrel.22-2.java.11.mandrel-22-2-maven-3-8-6-java-11/blob/main/Dockerfile), [`jdk11`](https://github.com/ochmanskide/base.images.debian.11-bullseye.mandrel.22-2.java.11.mandrel-22-2-maven-3-8-6-java-11/blob/main/Dockerfile) |
  
Table 2.1. Supported tags and respective Dockerfile links
  
  &nbsp;  
  &nbsp;  
### 2.2. Docker Repository Details
| REPOSITORY   |      TAG      |  IMAGE ID | SIZE |
|:----------|:-------------|:------|:------|
|ochmanskide/mandrel-maven|mandrel-22-2-maven-3-8-6-java-17| 899856155ff9 |933.52MB|
|ochmanskide/mandrel-maven|22-2-maven-3-8-6-java-17| 899856155ff9 |933.52MB|
|ochmanskide/mandrel-maven|java-17| 899856155ff9 |933.52MB|
|ochmanskide/mandrel-maven|java17| 899856155ff9 |933.52MB|
|ochmanskide/mandrel-maven|jdk-17| 899856155ff9 |933.52MB|
|ochmanskide/mandrel-maven|jdk17| 899856155ff9 |933.52MB|
|ochmanskide/mandrel-maven|latest| 899856155ff9 |933.52MB|
|[`ochmanskide/...11-bullseye.mandrel.22-2.java.17.mandrel-22-2-maven-3-8-6-java-17`](https://hub.docker.com/repository/docker/ochmanskide/base.images.debian.11-bullseye.mandrel.22-2.java.17.mandrel-22-2-maven-3-8-6-java-17)|1.0.0| 899856155ff9 |933.52MB|
|[`ochmanskide/...11-bullseye.mandrel.22-2.java.17.mandrel-22-2-maven-3-8-6-java-17`](https://hub.docker.com/repository/docker/ochmanskide/base.images.debian.11-bullseye.mandrel.22-2.java.17.mandrel-22-2-maven-3-8-6-java-17)|latest| 899856155ff9 |933.52MB|
  
Table 2.2.  Docker Repository Details
  
  &nbsp;  
  &nbsp;  
as you can see from the table 2.2., the highest semantic versioning number is equal to the floating tag `latest`, and also the highest supported java version at the moment, which is 17.  
In order to determine the highest semantic version for older java, for example 11 search in the docker hub registry for this specific version.  
  
Here is an example URL:  
https://hub.docker.com/repository/docker/ochmanskide/base.images.debian.11-bullseye.mandrel.22-2.java.11.mandrel-22-2-maven-3-8-6-java-11  
  
repository names are created according to the convention, so that you are be able to find the right one:  
https://hub.docker.com/repository/docker/ochmanskide/base.images.debian.11-bullseye.mandrel.22-2.java.11.mandrel-22-2-maven-3-8-6-java-11  
https://hub.docker.com/repository/docker/ochmanskide/base.images.debian.11-bullseye.mandrel.22-2.java.17.mandrel-22-2-maven-3-8-6-java-17  
etc.  
  
## 2. What's in this image?
```
### Mandrel Image
### Debian Slim
### Debian based Mandrel Official Image
### base/images/debian/debian-11-bullseye/mandrel/22-2/java-17/mandrel-22-2-maven-3-8-6-java-17
### base.images.debian.11-bullseye.mandrel.22-2.java.17.mandrel-22-2-maven-3-8-6-java-17
### ochmanskide/base.images.debian.11-bullseye.mandrel.22-2.java.17.mandrel-22-2-maven-3-8-6-java-17

debian-11-bullseye/mandrel-22-2-maven-3-8-6-java-17   00-slim            80MB   (80MB)
debian-11-bullseye/mandrel-22-2-maven-3-8-6-java-17   01-clean           80MB   (0MB)
debian-11-bullseye/mandrel-22-2-maven-3-8-6-java-17   02-graalvm         465MB  (385MB)
debian-11-bullseye/mandrel-22-2-maven-3-8-6-java-17   03-maven           594MB  (129MB)
debian-11-bullseye/mandrel-22-2-maven-3-8-6-java-17   04-aws-cli         753MB  (159MB)
debian-11-bullseye/mandrel-22-2-maven-3-8-6-java-17   05-docker-cli      805MB  (52MB)
debian-11-bullseye/mandrel-22-2-maven-3-8-6-java-17   06-dockerd         870MB  (65MB)
debian-11-bullseye/mandrel-22-2-maven-3-8-6-java-17   07-containerd      904MB  (34MB)
debian-11-bullseye/mandrel-22-2-maven-3-8-6-java-17   08-build-essential
debian-11-bullseye/mandrel-22-2-maven-3-8-6-java-17   09-libz-dev
debian-11-bullseye/mandrel-22-2-maven-3-8-6-java-17   10-zlib1g-dev      1.17GB (196MB)
debian-11-bullseye/mandrel-22-2-maven-3-8-6-java-17   17-git             1.18GB (70MB)
```

## 3. Why Debian?
Debian is Non-commercial Linux Distribution, which is very much stable and contains very large number of packages into its repository.  
Debian contains nearly 80% more packages than RedHat and this is the reason Debian contains packages like openoffice, Transmission bittorrent client, mp3 codecs, etc which a RedHat like distribution lacks and is required to be installed manually or from 3rd party repository.  

## 4. Getting started
## 4.1. Pull Docker image:
```bash
docker pull ochmanskide/mandrel-maven:latest
```

## 4.2. Run sample project
### 4.2.1. run Docker Container:
```bash
docker run -it --entrypoint /bin/bash ochmanskide/mandrel-maven:latest
```
### 4.2.2. clone the project:
```bash
git clone https://github.com/ochmanskide/quarkus.code-with-quarkus.git /home/quarkus/code-with-quarkus
```
### 4.2.3. change directory:
```bash
cd /home/quarkus/code-with-quarkus
```
### 4.2.4. build native image:
```bash
mvn package -Pnative
```
### 4.2.5. when the build completes, you may run the binary, which is located somewhere in ./target/ directory.
```bash
./target/code-with-quarkus-1.0.0-SNAPSHOT-runner
```
  
## 5. From image:
https://hub.docker.com/_/debian

```  
FROM debian:stable-20220717-slim
```
&nbsp;
## 6. How to clone source code?
```bash
git clone https://github.com/ochmanskide/base.images.debian.11-bullseye.mandrel.22-2.java.17.mandrel-22-2-maven-3-8-6-java-17.git ~/Workspace/ochmanskide/base/images/debian/11-bullseye/mandrel/22-2/java/17/mandrel-22-2-maven-3-8-6-java-17
```

&nbsp;
## 7. Source code pages
* https://github.com/ochmanskide/base.images.debian.11-bullseye.mandrel.22-2.java.11.mandrel-22-2-maven-3-8-6-java-11
* https://github.com/ochmanskide/base.images.debian.11-bullseye.mandrel.22-2.java.17.mandrel-22-2-maven-3-8-6-java-17
&nbsp;

&nbsp;

## 8. How to build image from source?
More details available directly in the [Section 3. How to build locally](https://github.com/ochmanskide/base.images.debian.11-bullseye.mandrel.22-2.java.17.mandrel-22-2-maven-3-8-6-java-17#3-how-to-build-locally) of [README.md](https://github.com/ochmanskide/base.images.debian.11-bullseye.mandrel.22-2.java.17.mandrel-22-2-maven-3-8-6-java-17) file.  
  
Excerpt:  
```bash
export DOCKER_HUB_HOST=$USER
cd ~/Workspace/ochmanskide/base/images/debian/11-bullseye/mandrel/22-2/java/17/mandrel-22-2-maven-3-8-6-java-17
gradle docker
```

&nbsp;
## 9. Docker Hub pages:
* https://hub.docker.com/repository/docker/ochmanskide/base.images.debian.11-bullseye.mandrel.22-2.java.17.mandrel-22-2-maven-3-8-6-java-17  
* https://hub.docker.com/repository/docker/ochmanskide/base.images.debian.11-bullseye.mandrel.22-2.java.11.mandrel-22-2-maven-3-8-6-java-11  
* https://hub.docker.com/repository/docker/ochmanskide/mandrel-maven  
* https://hub.docker.com/repository/docker/ochmanskide/graalvm-maven  
&nbsp;

&nbsp;

## 10. Excerpt from official Mandrel documentation

**Mandrel 22.2.0.0-Final** is a downstream distribution of the **GraalVM** community edition 22.2.0.  
Mandrel's main goal is to provide a native-image release specifically to support Quarkus.  
The aim is to align the native-image capabilities from GraalVM with OpenJDK and Red Hat Enterprise Linux libraries to improve maintainability for native Quarkus applications.  

**How Does Mandrel Differ From Graal**  
Mandrel releases are built from a code base derived from the upstream GraalVM code base, with only minor changes but some significant exclusions.  
They support the same native image capability as GraalVM with no significant changes to functionality.  
They do not include support for Polyglot programming via the Truffle interpreter and compiler framework.  
In consequence, it is not possible to extend Mandrel by downloading languages from the Truffle language catalogue.  

Mandrel is also built slightly differently to GraalVM, using the standard OpenJDK project release of jdk17u.  
This means it does not profit from a few small enhancements that Oracle have added to the version of OpenJDK used to build their own GraalVM downloads.  
Most of these enhancements are to the JVMCI module that allows the Graal compiler to be run inside OpenJDK.  
The others are small cosmetic changes to behaviour.  
These enhancements may in some cases cause minor differences in the progress of native image generation.  
They should not cause the resulting images themselves to execute in a noticeably different manner.  

Mandrel's `native-image` depends on the following packages:  

```
freetype-devel
gcc
glibc-devel
libstdc++-static
zlib-devel
```
On Fedora/CentOS/RHEL they can be installed with:  

```bash
dnf install glibc-devel zlib-devel gcc freetype-devel libstdc++-static
```
> Note: The package might be called `glibc-static` or `libstdc++-devel` instead of `libstdc++-static` depending on your system.  
> If the system is missing `stdc++`, `gcc-c++` package is needed too.

On Ubuntu-like systems with:  
```bash
apt install g++ zlib1g-dev libfreetype6-dev
```

## 17. image details:
```bash
$ docker run -it --entrypoint /bin/bash ochmanskide/mandrel-maven:latest

# echo $0
/bin/bash

# pwd
/home/maven

# whoami
root

# cat /etc/*-release
PRETTY_NAME="Debian GNU/Linux 11 (bullseye)"
NAME="Debian GNU/Linux"
VERSION_ID="11"
VERSION="11 (bullseye)"
VERSION_CODENAME=bullseye
ID=debian
HOME_URL="https://www.debian.org/"
SUPPORT_URL="https://www.debian.org/support"
BUG_REPORT_URL="https://bugs.debian.org/"

# printenv
GRAALVM_HOME=/opt/graalvm
HOSTNAME=b1b4ae122f74
JAVA_HOME=/opt/graalvm
PWD=/home/maven
IMAGE_SOURCE=https://github.com/ochmanskide/base.images.debian.11-bullseye.mandrel.22-2.java.17.mandrel-22-2-maven-3-8-6-java-17
MAVEN_VERSION=3.8.6
HOME=/root
M2_HOME=/opt/maven
TERM=xterm
MAVEN_HOME=/opt/maven
SHLVL=1
DOCKER_HUB_URL=https://hub.docker.com/repository/docker/
PATH=/opt/graalvm/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
DOCKER_HUB_HOST=ochmanskide
DOWNLOADS=/downloads
DEBIAN_FRONTEND=noninteractive
JAVA_VERSION=17.0.4
_=/usr/bin/printenv

# curl --version
bash: curl: command not found

# java -version
openjdk version "17.0.4" 2022-07-19
OpenJDK Runtime Environment Temurin-17.0.4+8 (build 17.0.4+8)
OpenJDK 64-Bit Server VM Temurin-17.0.4+8 (build 17.0.4+8, mixed mode, sharing)

# git version
git version 2.30.2

# docker --version
Docker version 20.10.11, build dea9396

# mvn -version

Apache Maven 3.8.6 (84538c9988a25aec085021c365c560670ad80f63)
Maven home: /opt/maven
Java version: 17.0.4, vendor: Eclipse Adoptium, runtime: /opt/graalvm
Default locale: en_US, platform encoding: ANSI_X3.4-1968
OS name: "linux", version: "5.10.25-linuxkit", arch: "amd64", family: "unix"


# aws --version
aws-cli/2.7.18 Python/3.9.11 Linux/5.10.104-linuxkit exe/x86_64.debian.11 prompt/off

# cat /home/mvn/settings.xml
```

## 12. Usage
```bash
docker run -it --entrypoint /bin/bash ochmanskide/mandrel-maven
java -version && echo
mvn -version && echo
docker --version && echo
aws --version && echo
alias la='ls -la' && echo
la /usr/local/bin/containerd && echo
/usr/local/bin/dockerd-entrypoint.sh 2> /dev/null && echo
/home/aws/ecr/login.sh && echo
docker images && echo
```

### 12.1. Run Quarkus with Maven
```bash
docker run -it --entrypoint /bin/bash ochmanskide/base.images.debian.11-bullseye.mandrel.22-2.java.17.mandrel-22-2-maven-3-8-6-java-17
git clone https://github.com/ochmanskide/quarkus.code-with-quarkus.git /home/quarkus/code-with-quarkus
cd /home/quarkus/code-with-quarkus/
mvn package -Pnative
./target/code-with-quarkus-1.0.0-SNAPSHOT-runner
```

## 13. License
  
Copyright 2022 Lukasz Ochmanski  
  
Licensed under the Apache License, Version 2.0 (the "License");  
you may not use this file except in compliance with the License.  
You may obtain a copy of the License at  
  
    http://www.apache.org/licenses/LICENSE-2.0  
  
Unless required by applicable law or agreed to in writing, software  
distributed under the License is distributed on an "AS IS" BASIS,  
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  
See the License for the specific language governing permissions and  
limitations under the License.  
  
View license information for the software contained in this image.  
  
As with all Docker images, these likely also contain other software which may be under other licenses (such as Bash, etc from the base distribution, along with any direct or indirect dependencies of the primary software being contained).  
  
Some additional license information which was able to be auto-detected might be found in the repo-info repository's .m2/ directory.  
  
As for any pre-built image usage, it is the image user's responsibility to ensure that any use of this image complies with any relevant licenses for all software contained within.  
  
https://hub.docker.com/_/maven  

## 14. Acknowledgments
https://github.com/vegardit/docker-graalvm-maven  

https://hub.docker.com/r/vegardit/graalvm-maven  

https://hub.docker.com/r/vegardit/graalvm-maven/tags  

https://github.com/graalvm/mandrel/releases/tag/mandrel-22.2.0.0-Final  


## 15. Frequently Asked Questions (FAQ)
### 15.1. Is this project OpenSource?
Yes, you can use this project in anyway you like. Feel free to copy, fork or do whatever you like with it.  
If you have questions about licensing, feel free to email me.  

### 15.2. How can I contact the maintainer?
if you have questions, feel free to send me an email: github@ochmanski.de  
I will be happy to help you.

### 15.2. Is this image compatible with AWS CodeBuild pipeline?
- yes, you could use it in the AWS environment, but you just need to install AWS-CLI.  
I already prepared a shell script `./scripts/install/05-install-aws-cli.sh` and `10-import-rds-certificates.sh`.  
Simply run it and you should be able to authenticate with all AWS resources.  
As an alternative, you may re-build the image from source and invoke the script directly from the `Dockerfile`.  
The result will be the same.
