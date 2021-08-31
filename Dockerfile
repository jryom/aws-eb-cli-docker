FROM python:3.7-alpine

ENV AWS_CLI_VERSION 1.20.33
ENV EB_CLI_VERSION 3.20.1

RUN apk --no-cache update && \
    apk --no-cache add ca-certificates groff less jq build-base libffi-dev openssl-dev git bash curl && \
    pip3 --no-cache-dir install --upgrade pip awscli==${AWS_CLI_VERSION} awsebcli==${EB_CLI_VERSION} cryptography==3.3.1
