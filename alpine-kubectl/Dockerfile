FROM alpine:latest

RUN apk add --no-cache bash curl jq

RUN KUBERNETES_VERSION="$(wget -qO- https://storage.googleapis.com/kubernetes-release/release/stable.txt)" && \
    wget https://storage.googleapis.com/kubernetes-release/release/${KUBERNETES_VERSION}/bin/linux/amd64/kubectl -O /usr/local/bin/kubectl && \
    chmod +x /usr/local/bin/kubectl

RUN YAML_BIN_VERSION="3.3.2"; \
    wget -O /usr/local/bin/yq "https://github.com/mikefarah/yq/releases/download/${YAML_BIN_VERSION}/yq_linux_amd64"; \
    chmod +x /usr/local/bin/yq

ENTRYPOINT ["/usr/local/bin/kubectl"]
