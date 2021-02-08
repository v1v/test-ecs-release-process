#!/usr/bin/env bash
set -exo pipefail


## Create release
/usr/local/bin/gren release \
        --token="${GITHUB_TOKEN}" \
        --limit=2 \
        --override \
        --config .ci/.gren.js \
        -B
