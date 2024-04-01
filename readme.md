
<!--                                               -->
<!--                                               -->
<!-- DO NOT EDIT ME; EDIT ./build_helper/readme.md -->
<!--                                               -->
<!--                                               -->

## What is this?

A flake for installing emscripten (with a fix for the emscripten cache trying to edit the immutable /nix/store)

## Installation

```sh
nix-env -i -f https://github.com/jeff-hykin/nix_version_search_cli/archive/0a19285e8b025dff74884117e47894659e9ebd7e.tar.gz
# or, if you have flakes:
nix profile install 'https://github.com/jeff-hykin/nix_version_search_cli/archive/0a19285e8b025dff74884117e47894659e9ebd7e.tar.gz#emscripten'
```

## How to use

- Just like regular emscripten, see their docs
