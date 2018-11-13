#!/usr/bin/env bash

gitlab-runner register \
  --non-interactive \
  --url "${ci_url}" \
  --registration-token "${ci_token}" \
  --executor "docker" \
  --docker-image alpine:3 \
  --description "docker-runner" \
  --tag-list "docker,aws" \
  --run-untagged \
  --locked="false"

gitlab-runner run --user=gitlab-runner --working-directory=/home/gitlab-runner
