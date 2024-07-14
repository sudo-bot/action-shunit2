#!/bin/sh

set -eu

cd $(dirname $0)/

kcov --version
SHUNIT_COLOR="none" ./test.sh | grep -F "Ran 1 test"
kcov --dump-summary /tmp/kcov ./test.sh
ls -lahR /tmp/kcov
