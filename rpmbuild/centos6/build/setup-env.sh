#!/bin/bash
yum install -y epel-release && \
    yum groupinstall -y "Development Tools" && \
    yum install -y createrepo expect glibc-static s3cmd wget && \
    yum clean all
