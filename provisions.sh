#!/bin/bash


sudo apt-get update -y
sudo apt-get upgrade -y

#Installing default-java
sudo apt-get -y install default-jre > /dev/null 2>&1
sudo apt-get -y install default-jdk > /dev/null 2>&1

#jenkin-keys
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > \
    /etc/apt/sources.list.d/jenkins.list'

# Installing jenkins
sudo apt-get -y install jenkins > /dev/null 2>&1
