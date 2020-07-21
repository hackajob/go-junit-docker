#!/bin/bash
cd /go/src/app
go test -mod=vendor -v ./... -skip-functional | go-junit-report > report.xml
