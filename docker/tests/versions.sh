#!/bin/sh

set -eux

echo "Running in: $PWD"

SHUNIT_COLOR="none" ./test.sh | grep -F "Ran 1 test"
kcov --dump-summary ./coverage ./test.sh
