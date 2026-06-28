#!/bin/sh

. "$(dirname "$0")/common.sh"

# Generates a key.txt file
# DO NOT LOSE the key.txt file. Keep it in a secure location.

docker run --rm \
  -v ${PWD}/vault:/work \
  ${IMAGE_NAME} \
  age-keygen \
  -o key.txt
