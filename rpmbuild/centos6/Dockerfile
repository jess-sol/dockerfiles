FROM centos:6
MAINTAINER Ben "ben@ros.io"

ENV USER root
ENV GOVERSION 1.6.2

RUN yum install -y epel-release && \
    yum groupinstall -y "Development Tools" && \
    yum install -y createrepo expect glibc-static s3cmd wget && \
    yum clean all

ADD install-go.sh /tmp/install-go.sh
RUN bash /tmp/install-go.sh
