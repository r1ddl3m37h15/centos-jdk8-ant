#!/bin/bash
hostname
whoami
pwd

set -e

docker build --tag 'jdk8-ant:latest' .
