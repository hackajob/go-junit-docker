FROM golang:1.18

RUN apt-get update -y && apt-get install -y php7.3

RUN go install github.com/jstemmer/go-junit-report@latest

COPY test-and-report.sh /

ENTRYPOINT ["/test-and-report.sh"]
