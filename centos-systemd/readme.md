CentOS Systemd
==============

Duplicate of centos/systemd image with better tags.

See https://hub.docker.com/r/centos/systemd


Example
-------

```
docker run --privileged -v "/sys/fs/cgroup:/sys/fs/cgroup:rw" -t ioben/centos-systemd:7
```

This image is meant to be used with [Ansible Molecule](https://github.com/ansible/molecule) by placing the following in `molecule.yml`:

```
platforms:
  - name: instance
    image: centos:7
    command: /sbin/init
    tmpfs:
      - /run
      - /tmp
    volumes:
      - /sys/fs/cgroup:/sys/fs/cgroup:ro
```

See [the Molecule documentation](https://molecule.readthedocs.io/en/latest/examples.html) for details.
