FROM alpine:latest

RUN KUBERNETES_VERSION="$(wget -qO- https://storage.googleapis.com/kubernetes-release/release/stable.txt)" && \
    wget https://storage.googleapis.com/kubernetes-release/release/${KUBERNETES_VERSION}/bin/linux/amd64/kubectl -O /usr/local/bin/kubectl && \
    chmod +x /usr/local/bin/kubectl

ENTRYPOINT ["/usr/local/bin/kubectl"]
