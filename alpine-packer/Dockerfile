FROM alpine:latest
ARG PACKER_VERSION=1.2.0

RUN apk --no-cache --no-progress add ca-certificates openssl && \
    wget -q -O packer.zip \
    "https://releases.hashicorp.com/packer/${PACKER_VERSION}/packer_${PACKER_VERSION}_linux_amd64.zip" && \
    unzip -o packer.zip -d /usr/local/bin && \
    rm -f packer.zip
