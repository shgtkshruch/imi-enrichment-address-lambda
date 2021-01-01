#!/usr/bin/env bash

# https://info.gbiz.go.jp/tools/imi_tools/index.html
curl https://info.gbiz.go.jp/tools/imi_tools/resource/imi-enrichment-address/imi-enrichment-address-2.0.0.tgz --output imi-enrichment-address-2.0.0.tgz

npm install imi-enrichment-address-2.0.0.tgz
