#!/usr/bin/env bash
cd $(dirname $0)

set -e

[["$(curl -s -o /dev/null -w ''%{http_code}'' localhost:8080)" == "200"]]
