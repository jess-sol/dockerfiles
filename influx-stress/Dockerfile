FROM golang:buster
RUN go get -v github.com/influxdata/influx-stress/cmd/...

ENTRYPOINT ["bin/influx-stress"]
CMD ["insert"]
