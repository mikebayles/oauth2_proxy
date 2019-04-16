#!/bin/bash
if [ -f /run/secrets/environment ]; then
    echo "Loading secrets as environment variables"
    echo "sha256sum: $(sha256sum /run/secrets/environment)"
    set -a
    source /run/secrets/environment
    set +a
fi
sh -c "$@"
