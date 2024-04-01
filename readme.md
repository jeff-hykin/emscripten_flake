
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
nix-env -i -f https://github.com/jeff-hykin/nix_version_search_cli/archive/565477a319b0c28046b0e4dbfe5cc9827837a875.tar.gz
# or, if you have flakes:
nix profile install 'https://github.com/jeff-hykin/nix_version_search_cli/archive/565477a319b0c28046b0e4dbfe5cc9827837a875.tar.gz#emscripten'
```

## How to use

- Just like regular emscripten, see their docs
