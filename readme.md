
<!--                                               -->
<!--                                               -->
<!-- DO NOT EDIT ME; EDIT ./build_helper/readme.md -->
<!--                                               -->
<!--                                               -->

## What is this?

A flake for installing emscripten (with a fix for the emscripten cache trying to edit the immutable /nix/store)

## Installation

```sh
nix-env -i -f https://github.com/jeff-hykin/nix_version_search_cli/archive/124d42d9e02b92f1c9a9fdbdc6be1b1937771975.tar.gz
# or, if you have flakes:
nix profile install 'https://github.com/jeff-hykin/nix_version_search_cli/archive/124d42d9e02b92f1c9a9fdbdc6be1b1937771975.tar.gz#emscripten'
```

## How to use

- Just like regular emscripten, see their docs
