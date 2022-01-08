#!/bin/bash

# -- Updating -- #
 sudo pacman -Sy --noconfirm
 sudo pacman -Syy --noconfirm
 sudo pacman -Syu --noconfirm

# -- Installing Important Tools -- #

 # -- Audio -- #
 sudo pacman -S pulseaudio ffmpeg pulseaudio-alsa --noconfirm

 # -- Video -- #
 sudo pacman -S xorg xorg-xinit xf86-video-amdgpu mesa xf86-video-ati psmisc --noconfirm

 # -- Terminal -- #
 sudo pacman -S alacritty kitty --noconfirm

 # -- WM -- #
 sudo pacman -S bspwm sxhkd rofi picom --noconfirm

 # -- Other -- #
 sudo pacman -S nitrogen git acpi feh wget curl tar unzip lxappearance binutils xz base-devel --noconfirm

 # -- Polybar -- #
 wget https://raw.githubusercontent.com/peux-os-sic/Peux-Leftwm/master/polybar-3.5.5-2-x86_64.pkg.tar.zst
 sudo pacman -U polybar-3.5.5-2-x86_64.pkg.tar.zst
 rm -rf polybar-3.5.5-2-x86_64.pkg.tar.zst
 sudo cp /usr/lib/libjsoncpp.so.25 /usr/lib/libjsoncpp.so.24
 
# -- Configure WM -- #

 # -- GTK -- #
 git clone https://github.com/dracula/gtk Dracula
 sudo mv Dracula/ /usr/share/themes/

 # -- Starship Prompt -- #
 wget https://github.com/starship/starship/releases/latest/download/starship-x86_64-unknown-linux-musl.tar.gz
 tar -xf starship-x86_64-unknown-linux-musl.tar.gz
 sudo mv starship /bin/
 rm -rf starship-x86_64-unknown-linux-musl.tar.gz

 # -- BSPWM -- #
 git clone https://github.com/Maharsh17/Dot.git
 cd Dot/BSPWM/
 rm README.md

 mkdir -p  ~/.config/
 mv bspwm/ polybar/ sxhkd/ alacritty/ kitty/ ~/.config/

 sudo mv icons/* /usr/share/icons/

 sudo mv fonts/* /usr/share/fonts/
 fc-cache -f -v

 mkdir ~/Wall/
 mv wallpaper/* ~/Wall/

 mkdir -p ~/.config/gtk-3.0/
 mv settings.ini ~/.config/gtk-3.0

 rm ~/.gtkrc-2.0
 mv .gtkrc-2.0 ~/

 rm ~/.bashrc
 mv .bashrc ~/

 mv .xinitrc ~/
 rm -rf *

 cd ..
 rm -rf Dot/

# -- Update -- #
 sudo pacman -Syy
 sudo pacman -Syu
 pacman -Qtdq | sudo pacman -Rns - 

