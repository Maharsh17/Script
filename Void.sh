#!/bin/bash

# -- Updating -- #
 sudo xbps-install -Suvy
 sudo xbps-remove -Oo 

# -- Installing Important Tools -- #

 # -- Audio -- #
 sudo xbps-install pulseaudio ffmpeg libavcodec

 # -- Video -- #
 sudo xbps-install xorg xf86-video-amdgpu mesa xf86-video-ati

 # -- Terminal -- #
 sudo xbps-install alacritty kitty

 # -- WM -- #
 sudo xbps-install bspwm sxhkd polybar rofi picom

 # -- Other -- #
 sudo xbps-install xtools nitrogen git wget curl tar unzip

 # -- Fonts -- #

 VER="v2.1.0"
 mkdir User
 cd User

  # -- Source Code Pro -- # 
  wget https://github.com/ryanoasis/nerd-fonts/releases/download/$VER/SourceCodePro.zip 
  unzip SourceCodePro.zip
  rm -rf SourceCodePro.zip

  # -- Jet Brains Mono -- #
  wget https://github.com/ryanoasis/nerd-fonts/releases/download/$VER/JetBrainsMono.zip
  unzip JetBrainsMono.zip
  rm -rf JetBrainsMono.zip

  # -- Hack -- #
  wget https://github.com/ryanoasis/nerd-fonts/releases/download/$VER/Hack.zip
  unzip Hack.zip
  rm -rf Hack.zip

 cd ..
 mv User /usr/share/fonts/
 fc-cache -f -v

# -- Configure WM -- #

 # -- BSPWM -- #
 git clone https://github.com/Maharsh17/Dot.git
 cd Dot
 rm README.md .xinitrc
 rm -rf polybar/ screenshot/
 mv bspwm sxhkd ~/.config/
 chmod +x ~/.config/bspwm/bpswmrc
 mkdir ~/Wall
 mv wallpaper/Wall.jpg ~/Wall
 mv .bashrc ~/
 rm -rf *
 cd ..

 # -- Polybar -- #
 git clone https://github.com/adi1090x/polybar-themes
 cd polybar-themes
 ./setup.sh
 cd ..

 # -- Starship Prompt -- #
 sh -c "$(curl -fsSL https://starship.rs/install.sh)"

# -- Update -- #
 sudo xbps-install -Suv
 sudo xbps-remove -Oo
