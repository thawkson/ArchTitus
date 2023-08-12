#!/usr/bin/env bash

update() {
  installable_packages=$(comm -12 <(pacman -Qmq | sort) <(sort aur-pkgs.txt))
  echo ${installable_packages}
}

install() {
  cat aur-pkgs.txt | while read line
  do
	  yay -S --noconfirm --needed ${line}
  done
}

main() {
  install
}

main
