# action-shunit2

A GitHub action for shunit2 and kcov

[![Build docker image](https://github.com/sudo-bot/action-shunit2/actions/workflows/build.yml/badge.svg)](https://github.com/sudo-bot/action-shunit2/actions/workflows/build.yml)
[![Test the action](https://github.com/sudo-bot/action-shunit2/actions/workflows/shunit2-kcov.yml/badge.svg)](https://github.com/sudo-bot/action-shunit2/actions/workflows/shunit2-kcov.yml)
[![codecov](https://codecov.io/gh/sudo-bot/action-shunit2/graph/badge.svg?token=3O47F7U6N6)](https://codecov.io/gh/sudo-bot/action-shunit2)

You can find the image on [Docker Hub](https://hub.docker.com/r/botsudo/action-shunit2)

[![Docker Pulls](https://img.shields.io/docker/pulls/botsudo/action-shunit2.svg)](https://hub.docker.com/r/botsudo/action-shunit2)

The shunit2 [website](https://github.com/kward/shunit2#readme)
The Kcov [website](https://github.com/SimonKagstrom/kcov#readme)

## Example usage

### test.sh

```sh
#!/bin/sh

testEquality() {
  assertEquals 1 1
}

. shunit2
```

### `.github/workflows/<name>.yml`

#### Example usage with tests

```yml
name: run tests

permissions:
  contents: read

on: [push]

jobs:
    tests:
        runs-on: ubuntu-latest
        steps:
            - uses: actions/checkout@v4
            - name: run my tests
              uses: sudo-bot/action-shunit2@latest
              with:
                  cli: "./tests/test.sh"
```

#### Example usage with a script and kcov

```yml
name: run tests

permissions:
  contents: read

on: [push]

jobs:
    tests:
        runs-on: ubuntu-latest
        steps:
            - uses: actions/checkout@v4

            - name: Run tests with kcov coverage
              uses: sudo-bot/action-shunit2@latest
              with:
                  cli: "kcov --dump-summary ./coverage ./tests/run.sh"

            - name: Upload coverage reports to Codecov
              uses: codecov/codecov-action@v4
              with:
                token: ${{ secrets.CODECOV_TOKEN }}
                directory: ./coverage/
                fail_ci_if_error: true
```
