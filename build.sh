#!/bin/bash
hostname
whoami
pwd

set -e

docker build --tag 'local/jdk8-ant:latest' .

./test.sh

