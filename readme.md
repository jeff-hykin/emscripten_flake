
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
nix-env -i -f https://github.com/jeff-hykin/nix_version_search_cli/archive/4444a0a20698f15dffc54b224e84505b3acea20d.tar.gz
# or, if you have flakes:
nix profile install 'https://github.com/jeff-hykin/nix_version_search_cli/archive/4444a0a20698f15dffc54b224e84505b3acea20d.tar.gz#emscripten'
```

## How to use

- Just like regular emscripten, see their docs
