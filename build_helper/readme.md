## What is this?

A flake for installing emscripten (with a fix for the emscripten cache trying to edit the immutable /nix/store)

## Installation

```sh
# for version REPLACEME_VERSION_9409841
nix-env -i -f https://github.com/jeff-hykin/emscripten_flake/archive/REPLACEME_420492093.tar.gz
# or, if you have flakes:
nix profile install 'https://github.com/jeff-hykin/emscripten_flake/archive/REPLACEME_420492093.tar.gz#emscripten'
```

## How to use

- Just like regular emscripten, see their docs
