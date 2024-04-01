
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
nix-env -i -f https://github.com/jeff-hykin/nix_version_search_cli/archive/f6c3c9905de532e74f9f748ed945b3fb08ba24db.tar.gz
# or, if you have flakes:
nix profile install 'https://github.com/jeff-hykin/nix_version_search_cli/archive/f6c3c9905de532e74f9f748ed945b3fb08ba24db.tar.gz#emscripten'
```

## How to use

- Just like regular emscripten, see their docs
