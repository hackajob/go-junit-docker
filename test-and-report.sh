#!/bin/bash
cd /go/src/app
go test -mod=vendor -v $(go list ./... | grep -v /test) | go-junit-report > report.xml
