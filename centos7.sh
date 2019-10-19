#!/bin/bash

# this script will install docker container on CentOS 7 

# install docker
yum remove docker docker-common docker-selinux docker-engine
yum install -y yum-utils device-mapper-persistent-data lvm2
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
yum -y install docker-ce docker-ce-cli containerd.io

# set up usrs
usermod -a -G docker $(whoami)

# start docker
systemctl enable docker
systemctl start docker


