#!/bin/bash

# 
# run ./tests.sh in the container
# 

set -e

hostname
whoami
pwd

if docker run --rm -v "$PWD/test":/usr/src/myapp -w /usr/src/myapp r1ddl3m37h15/jdk8-ant:latest bash ./tests.sh
then
  echo ----------
  echo -- pass --
  echo ----------
  exit 0
else
  echo ++++++++++++
  echo ++ failed ++
  echo ++++++++++++
  exit 1
fi

