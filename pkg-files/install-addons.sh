#!/usr/bin/env bash

update() {
  installable_packages=$(comm -12 <(sort aur-pkgs.txt) <(pacman -Qmq | sort))
  echo ${installable_packages}
}

install() {
  yay -S --noconfirm --needed $(cat aur-pkgs.txt)
}

main() {
  install
}

main
