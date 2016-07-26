FROM centos:6
MAINTAINER Ben "ben@ros.io"

ENV USER root
ENV GOVERSION 1.6.2

ADD ../setup-env.sh /tmp/setup-env.sh
RUN bash /tmp/setup-env.sh && rm /tmp/setup-env.sh

ADD ../install-go.sh /tmp/install-go.sh
RUN bash /tmp/install-go.sh && rm /tmp/install-go.sh
