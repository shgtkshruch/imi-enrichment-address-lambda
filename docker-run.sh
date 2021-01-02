#!/usr/bin/env bash

docker build -t imi-enrichment-address-lambda .
docker run -p 9000:8080 imi-enrichment-address-lambda
