#!/bin/sh

set -eux

echo "Running in: $PWD"

./docker/tests/test.sh | grep -F "Ran 1 test"
