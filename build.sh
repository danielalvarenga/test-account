#!/bin/bash

args="'$*'"

containerRepositoryName='test-account'

docker-compose down

# Create container application image with "latest" tag, set "Dockerfile" path,
# change "rails_env_var" variable inside Dockerfile and context path
if [[ "$args" =~ "--prod" ]]; then
  docker build -t $containerRepositoryName:latest .
else
  docker build -t $containerRepositoryName:latest --build-arg ignore_gems_from_envs='staging production' .
fi