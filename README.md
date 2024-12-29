<p align="center">
  <a href="https://github.com/actions/typescript-action/actions"><img alt="typescript-action status" src="https://github.com/actions/typescript-action/workflows/build-test/badge.svg"></a>
</p>

# cache-maven

This action properly caches your `~/.m2` repository to speed up your Maven builds. It also cleans up and only caches the dependencies in use to avoid infinite cache growth.

## Developer Guide

### Setup

```console
$ dawn setup
$ npm install
```

Do a full build/lint/package run:

```console
$ npm run all
```

Make sure to run the above before committing changes, or the GitHub action will fail.

