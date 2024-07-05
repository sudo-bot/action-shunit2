# action-shunit2

A GitHub action for shunit2 and kcov

[![Build docker image](https://github.com/sudo-bot/action-shunit2/actions/workflows/build.yml/badge.svg)](https://github.com/sudo-bot/action-shunit2/actions/workflows/build.yml)
[![test all binaries](https://github.com/sudo-bot/action-shunit2/actions/workflows/shunit2-kcov.yml/badge.svg)](https://github.com/sudo-bot/action-shunit2/actions/workflows/shunit2-kcov.yml)

You can find the image on [Docker Hub](https://hub.docker.com/r/botsudo/action-shunit2)

[![Docker Pulls](https://img.shields.io/docker/pulls/botsudo/action-shunit2.svg)](https://hub.docker.com/r/botsudo/action-shunit2)

The shunit2 [website](https://github.com/kward/shunit2#readme)
The Kcov [website](https://github.com/SimonKagstrom/kcov#readme)

## Example usage

```yml
name: run tests
on: [push]

jobs:
    tests:
        runs-on: ubuntu-latest
        steps:
            - uses: actions/checkout@v4
            - name: run my tests
              uses: sudo-bot/action-shunit2@latest
              with:
                  cli: "./tests/run.sh"
```

## Example usage with a script and kcov

```yml
name: run tests
on: [push]

jobs:
    tests:
        runs-on: ubuntu-latest
        steps:
            - uses: actions/checkout@v4
            - name: run my tests
              uses: sudo-bot/action-shunit2@latest
              with:
                  cli: "kcov ./build/coverage ./tests/test.sh"
```
