FROM centos:latest

RUN  yum -y update \
  && yum -y install epel-release \
  && yum -y install nginx \
  && yum clean all \
  && systemctl enable nginx
