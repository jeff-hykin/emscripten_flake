
<!--                                               -->
<!--                                               -->
<!-- DO NOT EDIT ME; EDIT ./build_helper/readme.md -->
<!--                                               -->
<!--                                               -->

## What is this?

A flake for installing emscripten (with a fix for the emscripten cache trying to edit the immutable /nix/store)

## Installation

```sh
nix-env -i -f https://github.com/jeff-hykin/nix_version_search_cli/archive/d2b7c7ad4d15d0528564f16152ddf63e618887ea.tar.gz
# or, if you have flakes:
nix profile install 'https://github.com/jeff-hykin/nix_version_search_cli/archive/d2b7c7ad4d15d0528564f16152ddf63e618887ea.tar.gz#emscripten'
```

## How to use

- Just like regular emscripten, see their docs
