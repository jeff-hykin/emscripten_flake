
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
nix-env -i -f https://github.com/jeff-hykin/emscripten_flake/archive/392a84fb6775648cdfe5802cbddcb73d4464f0fc.tar.gz
# or, if you have flakes:
nix profile install 'https://github.com/jeff-hykin/emscripten_flake/archive/392a84fb6775648cdfe5802cbddcb73d4464f0fc.tar.gz#emscripten'
```

## How to use

- Just like regular emscripten, see their docs
