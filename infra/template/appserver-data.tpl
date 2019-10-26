#!/bin/bash
set -e

#do an update
sudo yum update -y

### setup JENKINS
### install JDK-8 and update JRE link
sudo yum -y install java-1.8.0-openjdk-devel.x86_64

### install Tomcat
sudo yum install tomcat-webapps.noarch -y
service tomcat.service start

##Install Node JS
sudo yum install -y gcc-c++ make

sudo curl -sL https://rpm.nodesource.com/setup_10.x | sudo -E bash -

sudo yum install nodejs -y

##Install yarn

curl -sL https://dl.yarnpkg.com/rpm/yarn.repo | sudo tee /etc/yum.repos.d/yarn.repo

sudo yum install yarn -y


## install git
sudo yum install git -y




