FROM golang:1.13

RUN apk add --purge --no-cache --update php

RUN go get -u github.com/jstemmer/go-junit-report

COPY test-and-report.sh /

ENTRYPOINT ["/test-and-report.sh"]
