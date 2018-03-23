FROM alpine:latest
RUN apk --no-progress --no-cache add git python python-dev py-pip build-base libffi-dev linux-headers openssl-dev && \
    pip2 install boto boto3 ansible jmespath molecule
