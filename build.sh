#!/bin/bash
hostname
whoami
pwd

set -e

docker build --tag 'r1ddl3m37h15/jdk8-ant:latest' .
