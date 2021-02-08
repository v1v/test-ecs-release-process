#!/usr/bin/env bash
set -exo pipefail

## Create release
/usr/local/bin/gren release \
        --token="${GITHUB_TOKEN}" \
        --tags="${TAG_NAME}" \
        --config .ci/.gren.js \
        --override -B
