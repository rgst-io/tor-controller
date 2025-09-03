#!/usr/bin/env bash
set -euo pipefail

CRD_DIR="$1"
find "$CRD_DIR" -type f -exec sh -c 'TEMP_FILE=`mktemp` && grep -v -- "- containers" "$0" > "$TEMP_FILE" && mv "$TEMP_FILE" "$0"' "{}" \;
