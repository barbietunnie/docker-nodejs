# node.js
#
# VERSION       latest

# use the centos base image provided by dotCloud
FROM centos
MAINTAINER Marco Palladino, marco@mashape.com

# Upgrading system
RUN yum -y upgrade

# Enabling EPEL
RUN rpm --import https://fedoraproject.org/static/0608B895.txt
RUN rpm -Uvh http://download-i2.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm

# Installing node.js
RUN yum install -y --enablerepo=epel nodejs npm

# Installing git and ssh-agent and GraphicsMagick
RUN yum install -y git openssh-clients GraphicsMagick

# Installing grunt
RUN npm install -g grunt-cli
RUN npm install -g bower
