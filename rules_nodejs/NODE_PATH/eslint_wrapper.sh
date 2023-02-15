#!/usr/bin/env bash

set -euo pipefail
[[ -n "${DEBUG:-}" ]] && set -x

eslint="${PWD}/$1"
shift

# Call eslint with a $0 it can use.
NODE_PATH="${PWD}/external/npm/node_modules" bash -c "source \"${eslint}\"" "$0" "$@"
