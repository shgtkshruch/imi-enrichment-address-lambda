# imi-enrichment-address-lambda

## Install

```sh
./install.sh
```

## Run

```sh
$ ./docker-run.sh
$ curl -XPOST "http://localhost:9000/2015-03-31/functions/function/invocations" \
  -d '{ "address": "霞が関2" }'
```

## Push docker image to ECR

```sh
./ecr-push.sh ACCOUNT_ID
```
