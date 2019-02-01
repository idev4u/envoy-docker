#!/bin/bash -ex
GOOS=linux GOARCH=386 CGO_ENABLED=0 go build -o main.linux src/main/main.go
