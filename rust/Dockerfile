FROM centos:7
MAINTAINER Ben "ben@ros.io"

ENV USER root

RUN yum install -y file sudo && yum clean all
RUN curl -sSf https://static.rust-lang.org/rustup.sh | sh
