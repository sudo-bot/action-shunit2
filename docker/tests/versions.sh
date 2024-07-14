#!/bin/sh

set -e

cd $(dirname $0)/

kcov --version
SHUNIT_COLOR="none" ./test.sh | grep -F "Ran 1 test"
kcov --collect-only /tmp/kcov ./test.sh
ls -lah /tmp/kcov/index.html
