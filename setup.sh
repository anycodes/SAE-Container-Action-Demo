#!/usr/bin/env bash

# git clone && cd repo

version=$(cat version)
registry='registry.cn-shanghai.aliyuncs.com/custom-container/test:'

export image=$registry$version
s build --use-docker
s deploy --push-registry acr-internet --use-local -y
