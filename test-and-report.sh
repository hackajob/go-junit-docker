#!/bin/bash
cd /go/src/app
go test -v | go-junit-report > report.xml
