FROM ioben/centos-systemd:7

RUN cd /lib/systemd/system/multi-user.target.wants && \
ln -s ../systemd-logind.service systemd-logind.service && \
ln -s ../systemd-user-sessions.service systemd-user-sessions.service

RUN yum -y install openssh-server && \
systemctl enable sshd

COPY entrypoint.sh /entrypoint-ssh.sh
ENTRYPOINT ["/entrypoint-ssh.sh"]

CMD ["/usr/sbin/init"]
