#!/bin/sh

set -eux

echo "Running in: $PWD"

export SHUNIT_COLOR="none"

./docker/tests/test.sh | grep -F "Ran 1 test"
