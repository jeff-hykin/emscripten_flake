
<!--                                               -->
<!--                                               -->
<!-- DO NOT EDIT ME; EDIT ./build_helper/readme.md -->
<!--                                               -->
<!--                                               -->

## What is this?

A flake for installing emscripten (with a fix for the emscripten cache trying to edit the immutable /nix/store)

## Installation

```sh
nix-env -i -f https://github.com/jeff-hykin/nix_version_search_cli/archive/8805399823e875e58fe3c1bcd30ffe464fa098a5.tar.gz
# or, if you have flakes:
nix profile install 'https://github.com/jeff-hykin/nix_version_search_cli/archive/8805399823e875e58fe3c1bcd30ffe464fa098a5.tar.gz#emscripten'
```

## How to use

- Just like regular emscripten, see their docs