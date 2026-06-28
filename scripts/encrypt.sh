#!/bin/sh

. "$(dirname "$0")/common.sh"
readPublicKey

if [ -z "$1" ]; then
  echo "Usage: $(basename "$0") <filename>" >&2
  echo "  Encrypt vault/<filename> to vault/<filename>.age" >&2
  exit 1
fi

INPUT=$(basename "$1")
OUTPUT="${INPUT}.age"

docker run --rm \
  -v ${PWD}/vault:/work \
  ${IMAGE_NAME} \
  age \
  -r "${PUBLIC_KEY}" \
  -o "${OUTPUT}" \
  "${INPUT}"
