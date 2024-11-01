FROM golang:1.22

RUN apt-get update -y && apt-get install -y php

RUN go install github.com/jstemmer/go-junit-report@latest

COPY test-and-report.sh /

ENTRYPOINT ["/test-and-report.sh"]
