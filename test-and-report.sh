#!/bin/bash
cd /go/src/app
go test -mod=vendor -v $(go list -mod=vendor ./... | grep -v /test) | go-junit-report > report.xml
