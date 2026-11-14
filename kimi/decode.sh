#!/bin/bash
# 一键解码 rxhumanize-sales-exai.kplugin
# 用法: bash decode.sh

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
B64_FILE="$SCRIPT_DIR/rxhumanize-sales-exai.kplugin.b64"
OUTPUT_FILE="$SCRIPT_DIR/rxhumanize-sales-exai.kplugin"

if [ ! -f "$B64_FILE" ]; then
    echo "Error: $B64_FILE not found"
    exit 1
fi

base64 -d "$B64_FILE" > "$OUTPUT_FILE"
echo "Decoded: $OUTPUT_FILE"
ls -la "$OUTPUT_FILE"
