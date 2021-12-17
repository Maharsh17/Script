#!/bin/bash

# -- Updating -- #
 sudo xbps-install -u xbps
 sudo xbps-install -Suvy
 sudo xbps-remove -Oo 

# -- Installing Important Tools -- #

 # -- Audio -- #
 sudo xbps-install pulseaudio ffmpeg libavcodec

 # -- Video -- #
 sudo xbps-install xorg xf86-video-amdgpu mesa xf86-video-ati

 # -- Terminal -- #
 sudo xbps-install alacritty kitty zsh

 # -- WM -- #
 sudo xbps-install bspwm sxhkd polybar rofi picom

 # -- Other -- #
 sudo xbps-install xtools nitrogen git wget curl tar unzip lxappearance

  # -- Jet Brains Mono -- #
  wget https://download.jetbrains.com/fonts/JetBrainsMono-2.242.zip
  unzip JetBrainsMono-*.zip
  rm -rf *.zip 
  rm rm -rf AUTHORS.txt OFL.txt fonts/variable fonts/webfonts
  cd fonts
  mkdir -p ~/.local/share/fonts
  mv ttf ~/.local/share/fonts
  cd .. 
  fc-cache -f -v



# -- Configure WM -- #

 # -- BSPWM -- #
 git clone https://github.com/Maharsh17/Dot.git
 cd Dot
 rm README.md

 mv bspwm sxhkd polybar alacritty kitty ~/.config/
 chmod +x ~/.config/bspwm/bpswmrc

 mkdir ~/Wall
 mv wallpaper/Wall.jpg ~/Wall/

 mv .gtkrc-2.0 ~/
 mv .bashrc ~/
 mv .xinitrc ~/
 rm -rf *
 cd ..

 # -- Starship Prompt -- #
 sh -c "$(curl -fsSL https://starship.rs/install.sh)"

 # -- ZSH -- #
 sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
 rm ~/.zshrc
 mv .zshrc ~/ 

 # -- SHELL -- #
 chsh -s /usr/bin/zsh

 # -- GTK -- #
 git clone https://github.com/dracula/gtk Dracula
 mkdir ~/.themes
 mv Dracula ~/.themes

# -- Update -- #
 sudo xbps-install -Suv
 sudo xbps-remove -Oo
