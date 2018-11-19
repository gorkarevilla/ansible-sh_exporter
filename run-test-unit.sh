#!/usr/bin/env bash

set -e

[ $# -eq 0 ] && INTERACTIVE="-it"

echo "--- Building image"
docker build -t ansible-sh_exporter/tests tests

echo "+++ Running $@"
docker run $INTERACTIVE --rm \
  -v `pwd`:/home/ansible-sh_exporter \
  -w /home/ansible-sh_exporter \
  ansible-sh_exporter/tests "$@"
