#!/bin/sh

. "$(dirname "$0")/common.sh"

if [ -z "$1" ]; then
  echo "Usage: $(basename "$0") <filename>.age" >&2
  echo "  Decrypt vault/<filename>.age to vault/<filename>" >&2
  exit 1
fi

ENCRYPTED_FILE=$(basename "$1")

case "$ENCRYPTED_FILE" in
  *.age) ;;
  *)
    echo "Expected <filename>.age" >&2
    exit 1
    ;;
esac

OUTPUT="${ENCRYPTED_FILE%.age}"

docker run --rm \
  -v ${PWD}/vault:/work \
  ${IMAGE_NAME} \
  age \
  -d \
  -i key.txt \
  -o "${OUTPUT}" \
  "${ENCRYPTED_FILE}"
