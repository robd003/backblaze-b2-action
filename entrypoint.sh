#!/bin/sh
set -e

if [ -z "$B2_APPLICATION_KEY_ID" ]; then
  echo "Error: Missing B2_APPLICATION_KEY_ID"
  exit 1
fi

if [ -z "$B2_APPLICATION_KEY" ]; then
  echo "Error: Missing B2_APPLICATION_KEY"
  exit 1
fi

if [ -z "$SOURCE_DIR" ]; then
  echo "Error: Missing SOURCE_DIR"
  exit 1
fi

if [ -z "$B2_BUCKET" ]; then
  echo "Error: Missing B2_BUCKET"
  exit 1
fi

b2 sync --delete --replace-newer ${SOURCE_DIR} ${B2_BUCKET}
