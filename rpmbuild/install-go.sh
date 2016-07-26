#!/bin/bash
cd /tmp
wget -q https://storage.googleapis.com/golang/go${GOVERSION}.linux-amd64.tar.gz
mkdir /usr/local/go${GOVERSION}
tar --strip 1 -C /usr/local/go${GOVERSION} -xzf go${GOVERSION}.linux-amd64.tar.gz

cat <<EOF > /etc/profile.d/golang.sh
export GOROOT=/usr/local/go${GOVERSION}
export PATH=\$PATH:\$GOROOT/bin
export GOPATH=~/golang
EOF
