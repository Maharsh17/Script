#!/bin/bash

# -- Installing Important Tools -- #

 # -- Audio -- #
 sudo pacman -S pulseaudio ffmpeg pulseaudio-alsa --noconfirm

 # -- Video -- #
 sudo pacman -S xorg xorg-xinit xf86-video-amdgpu mesa xf86-video-ati psmisc --noconfirm

 # -- Terminal -- #
 sudo pacman -S alacritty kitty --noconfirm
 
 # -- Other -- #
 sudo pacman -S nitrogen git acpi feh wget curl tar unzip lxappearance binutils xz sxhkd rofi base-devel --noconfirm

 # -- Polybar -- #
 wget https://raw.githubusercontent.com/Maharsh17/Repo/main/Arch/polybar-3.5.5-2-x86_64.pkg.tar.zst
 sudo pacman -U polybar-3.5.5-2-x86_64.pkg.tar.zst --noconfirm
 rm -rf polybar-3.5.5-2-x86_64.pkg.tar.zst
 sudo cp /usr/lib/libjsoncpp.so.25 /usr/lib/libjsoncpp.so.24
 
 # -- Picom -- #
 wget https://raw.githubusercontent.com/Maharsh17/Repo/main/Arch/picom-jonaburg-git-0.1-4-x86_64.pkg.tar.zst
 sudo pacman -U picom-jonaburg-git-0.1-4-x86_64.pkg.tar.zst --noconfirm
 rm -rf picom-jonaburg-git-0.1-4-x86_64.pkg.tar.zst
 
 # -- BSPWM -- #
 wget https://raw.githubusercontent.com/Maharsh17/Repo/main/Arch/bspwm-rounded-corners-0.9.10-2-x86_64.pkg.tar.zst
 sudo pacman -U bspwm-rounded-corners-0.9.10-2-x86_64.pkg.tar.zst --noconfirm
 rm -rf bspwm-rounded-corners-0.9.10-2-x86_64.pkg.tar.zst
 
