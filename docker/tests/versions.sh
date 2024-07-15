#!/bin/sh

set -eux

echo "Running in: $PWD"

SHUNIT_COLOR="none" ./docker/tests/test.sh | grep -F "Ran 1 test"
kcov --dump-summary ./coverage ./docker/tests/test.sh
