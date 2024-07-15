#!/bin/sh

set -eux

cd "$1"

SHUNIT_COLOR="none" ./test.sh | grep -F "Ran 1 test"
kcov --dump-summary ./coverage ./test.sh
