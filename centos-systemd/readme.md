CentOS Systemd
==============

Duplicate of centos/systemd image with better tags.

See https://hub.docker.com/r/centos/systemd


Example
-------

```
docker run --privileged -v "/sys/fs/cgroup:/sys/fs/cgroup:rw" -t ioben/centos-systemd:7
```
