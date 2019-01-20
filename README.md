# homebrew-tap

This repository holds formulae for installing some software that can't be
included in homebrew-cask (yet). Formulae can be installed with [brew](https://brew.sh),
a "package manager" for macOS.

## How To

To install a program you first need to `brew
tap` this repository to get the formulae. See [tap](https://docs.brew.sh/brew-tap.html) docs for more on `brew tap`.

Open a terminal and run the following `brew` command:

```sh
$ brew tap aaronraimist/tap
```

This command will clone the repository to your computer and make the
formulae availabe. You can then install each program with brew, e.g.

```sh
$ brew cask install spectral
```
to install [Spectral](https://gitlab.com/b0/spectral).

## Feedback

Feel free to leave an issue in this repository related to brew issues with my
formulae. For software related issues see the projects repository. To find a
project repository run `brew info`, for example with `spectral`

```sh
$ brew cask info spectral
spectral: 0.0.0.491
https://gitlab.com/b0/spectral
Not installed
From: https://github.com/aaronraimist/homebrew-tap/blob/master/Casks/spectral.rb
==> Name
Spectral
==> Artifacts
spectral.app (App)
```
