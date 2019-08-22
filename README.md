# Guowei's dotfiles

[![license](https://img.shields.io/github/license/icgw/dotfiles)](LICENSE)

> The dotfiles of Guowei Chen.

## Install

This project uses [curl](https://curl.haxx.se/). Go check them out if you don't have them locally installed.

```sh
$ sudo apt-get install curl
```

## Usage

This is only a dotfiles package, including some configurations.

```sh
$ curl -sL https://raw.githubusercontent.com/icgw/dotfiles/master/ubuntu_16_04.sh | sh
$ sudo chsh -s `which zsh`
$ tmux source-file ${HOME}/.tmux.conf
```

## Maintainer

[@icgw](https://github.com/icgw)

## License

[GPLv3](LICENSE) © Guowei Chen
