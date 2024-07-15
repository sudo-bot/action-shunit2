#!/bin/sh

set -eu

cd $(dirname $0)/

kcov --version
SHUNIT_COLOR="none" ./test.sh | grep -F "Ran 1 test"
kcov --cobertura-only --dump-summary /tmp/kcov ./test.sh
ls -lahR /tmp/kcov/
find /tmp/kcov/test.sh/ -type f \( -name '*.json' -o -name '*.xml' \) -print
