FROM golang:1.14

RUN apt-get update -y && apt-get install -y php7.3

RUN go get -u github.com/jstemmer/go-junit-report

COPY test-and-report.sh /

ENTRYPOINT ["/test-and-report.sh"]
