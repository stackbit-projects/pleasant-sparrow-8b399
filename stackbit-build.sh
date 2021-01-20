#!/usr/bin/env bash

set -e
set -o pipefail
set -v

echo "stackbit-build.sh: start build"

# build site
hugo

./inject-stackbit-widget.js public https://localhost:8092/init.js 6008b3996b574d2f6a2c5a57

echo "stackbit-build.sh: finished build"
