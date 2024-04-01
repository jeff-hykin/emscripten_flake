
<!--                                               -->
<!--                                               -->
<!-- DO NOT EDIT ME; EDIT ./build_helper/readme.md -->
<!--                                               -->
<!--                                               -->

## What is this?

A flake for installing emscripten (with a fix for the emscripten cache trying to edit the immutable /nix/store)

## Installation

```sh
# for version 3.1.51
nix-env -i -f https://github.com/jeff-hykin/emscripten_flake/archive/e361ff9dde1a4191807af1bd7ec1d4116dd72ae9.tar.gz
# or, if you have flakes:
nix profile install 'https://github.com/jeff-hykin/emscripten_flake/archive/e361ff9dde1a4191807af1bd7ec1d4116dd72ae9.tar.gz#emscripten'
```

## How to use

- Just like regular emscripten, see their docs
