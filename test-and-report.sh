#!/bin/bash
cd /go/src/app
go test -mod=vendor -v ./... | go-junit-report > report.xml
