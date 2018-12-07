#!/bin/bash
add-apt-repository ppa:webupd8team/java -y
apt update
apt install oracle-java8-installer -y

echo '#Set JAVA_HOME directory' >> ~/.bashrc
echo 'export JAVA_HOME="/usr/lib/jvm/java-8-oracle/jre/bin"' >> ~/.bashrc
echo 'export PATH="${PATH}:${JAVA_HOME}"' >> ~/.bashrc
