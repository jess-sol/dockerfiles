FROM alpine:latest

RUN apk add --no-cache bash curl jq

RUN KUBERNETES_VERSION="$(wget -qO- https://storage.googleapis.com/kubernetes-release/release/stable.txt)" && \
    wget https://storage.googleapis.com/kubernetes-release/release/${KUBERNETES_VERSION}/bin/linux/amd64/kubectl -O /usr/local/bin/kubectl && \
    chmod +x /usr/local/bin/kubectl

RUN wget -O /tmp/rq.tar.gz https://github.com/dflemstr/rq/releases/download/v1.0.2/rq-v1.0.2-x86_64-unknown-linux-musl.tar.gz && \
    tar -C /usr/local/bin -xf /tmp/rq.tar.gz && \
    rm /tmp/rq.tar.gz

RUN YAML_BIN_VERSION="3.3.2"; \
    wget -O /usr/local/bin/yq "https://github.com/mikefarah/yq/releases/download/${YAML_BIN_VERSION}/yq_linux_amd64"; \
    chmod +x /usr/local/bin/yq

ENTRYPOINT ["/usr/local/bin/kubectl"]
