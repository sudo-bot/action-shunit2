#!/bin/sh

set -e

kcov --version
./test.sh | grep -F "Ran 1 test"
kcov --report-only /tmp/kcov ./test.sh
ls -lah /tmp/kcov/index.html
