#!/bin/bash

LDFLAGS="-s -w"
gox -ldflags="${LDFLAGS}" \
    -osarch="darwin/amd64 linux/amd64 windows/amd64 linux/arm openbsd/amd64" \
    -output "dist/{{.Dir}}-{{.OS}}-{{.Arch}}"
