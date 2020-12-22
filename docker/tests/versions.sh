#!/bin/sh

set -e

cd $(dirname $0)/

kcov --version
./test.sh | grep -F "Ran 1 test"
kcov --report-only /tmp/kcov ./test.sh
ls -lah /tmp/kcov/index.html
