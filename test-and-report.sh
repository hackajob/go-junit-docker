#!/bin/bash
cd /go/src/app
go-wrapper download && \
	go-wrapper install && \
	go test -v | go-junit-report > report.xml
