CentOS SSH
==========

Contains CentOS with systemd configured to run sshd. Mostly used for local
testing of Ansible roles. See the `molecule` image based on this image.

Should be run with:

```
docker run --privileged -v "/sys/fs/cgroup:/sys/fs/cgroup:rw" -t ioben/centos-ssh:7
```

Optionally `SSH_USER` and `SSH_PASS` may be specified to create a posix account
in the container that can be SSH'd into:

```
docker run --privileged -v "/sys/fs/cgroup:/sys/fs/cgroup:rw" -t -e SSH_USER=docker -e SSH_PASS=docker ioben/centos-ssh:7
```
