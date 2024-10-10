#!/bin/bash
cd /go/src/app
go test -mod=vendor -buildvcs=false -v $(go list -buildvcs=false -mod=vendor ./... | grep -v /test) | go-junit-report > report.xml
