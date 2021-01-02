#!/usr/bin/env bash

account_id=$1
repository_host="$account_id.dkr.ecr.ap-northeast-1.amazonaws.com"
repository_name="imi-enrichment-address-lambda"

aws ecr create-repository \
  --repository-name $repository_name \
  --image-scanning-configuration scanOnPush=true

docker tag $repository_name:latest $repository_host/$repository_name:latest

aws ecr get-login-password | docker login \
  --username AWS \
  --password-stdin $repository_host

docker push $repository_host/$repository_name:latest
