[![MacOS Build for GNU Emacs](https://github.com/mkvoya/ebuild/actions/workflows/build.yml/badge.svg)](https://github.com/mkvoya/ebuild/actions/workflows/build.yml)

This repository automatically builds GNU Emacs for macOS every day at 00:00 UTC directly from the latest upstream Git sources, with a small number of patches applied.

Two build workflows are provided:

* Static Build – Links against as many libraries statically as practical.
* Dynamic Build – Uses dynamically linked libraries.

Each workflow produces three Emacs variants:

* Vanilla Emacs
* Emacs with MPS support
* Emacs with libgccjit support

### About the build process

The original practice of the parent project was to avoid relying on package managers entirely. In practice, however, I find some build tools and libraries have extensive dependency chains, and maintaining fully static builds for all of them would require a huge amount of effort.
I thus use some build tools and libraries from Homebrew, while leave others fetched directly from their upstream sources, built locally, and linked statically whenever practical.
