#!/usr/bin/env bash

install_yay() {
  cd ~
  git clone "https://aur.archlinux.org/yay-git.git"
  cd ~/yay-git
  makepkg -si --noconfirm
}

main() {
  install_yay
}

main
