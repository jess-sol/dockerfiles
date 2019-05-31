FROM centos:7

# Copied from https://hub.docker.com/r/centos/systemd
# Copied because upstream docker image doesn't have any tags other than latest
ENV container docker

STOPSIGNAL SIGRTMIN+3

RUN (cd /lib/systemd/system/sysinit.target.wants; for i in *; do [ $i == systemd-tmpfiles-setup.service ] || rm -f $i; done); \
rm -f /lib/systemd/system/multi-user.target.wants/*; \
rm -f /etc/systemd/system/*.wants/*; \
rm -f /lib/systemd/system/local-fs.target.wants/*; \
rm -f /lib/systemd/system/sockets.target.wants/*udev*; \
rm -f /lib/systemd/system/sockets.target.wants/*initctl*; \
rm -f /lib/systemd/system/basic.target.wants/*; \
rm -f /lib/systemd/system/anaconda.target.wants/*;

RUN yum install -y firewalld initscripts cronie && \
yum clean all && \
chkconfig network off && \
chkconfig netconsole off

VOLUME ["/sys/fs/cgroup"]

CMD ["/usr/sbin/init"]
