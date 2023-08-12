#!/usr/bin/env bash


installable_packages=$(comm -12 <(pacman -Slq | sort) <(sort pacman-pkgs.txt))
sudo pacman -S --needed ${installable_packages}
