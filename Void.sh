#!/bin/bash

# -- Updating -- #
 sudo xbps-install -u xbps
 sudo xbps-install -Suvy
 sudo xbps-remove -Oo

# -- Installing Important Tools -- #

 # -- Audio -- #
 sudo xbps-install pulseaudio ffmpeg libavcodec -y

 # -- Video -- #
 sudo xbps-install xorg xf86-video-amdgpu mesa xf86-video-ati -y

 # -- Terminal -- #
 sudo xbps-install alacritty kitty zsh -y

 # -- WM -- #
 sudo xbps-install bspwm sxhkd polybar rofi picom -y

 # -- Other -- #
 sudo xbps-install xtools nitrogen git wget curl tar unzip lxappearance font-iosevka binutils -y

# -- Fonts -- #
  
 # -- Jet Brains Mono -- #
 wget https://download.jetbrains.com/fonts/JetBrainsMono-2.242.zip
 unzip JetBrainsMono-*.zip
 rm -rf *.zip 
 rm -rf AUTHORS.txt OFL.txt fonts/variable/ fonts/webfonts/
 cd fonts/
 mkdir -p ~/.local/share/fonts
 mv ttf/ Jet/ 
 mv Jet/ ~/.local/share/fonts
 cd .. 
 rm -rf fonts/
 fc-cache -f -v

# -- Configure WM -- #

 # -- BSPWM -- #
 git clone https://github.com/Maharsh17/Dot.git
 cd Dot
 rm README.md

 mkdir ~/.config
 mv bspwm sxhkd polybar alacritty kitty ~/.config/
 chmod +x ~/.config/bspwm/bpswmrc

 mkdir ~/Wall
 mv wallpaper/* ~/Wall/

 rm ~/.gtkrc-2.0 
 mv .gtkrc-2.0 ~/
 
 rm ~/.bashrc
 mv .bashrc ~/
 
 rm ~/.zshrc
 mv .zshrc ~/
 
 mv .xinitrc ~/
 rm -rf *
 cd ..
 rm -rf Dot/

 # -- GTK -- #
 git clone https://github.com/dracula/gtk Dracula
 mkdir ~/.themes
 mv Dracula ~/.themes
 
 # -- Icon -- #
 wget https://raw.githubusercontent.com/PapirusDevelopmentTeam/papirus-icon-theme/master/install.sh
 chmod +x install.sh
 ./install.sh
 rm -rf install.sh
 
 # -- Starship Prompt -- #
 sh -c "$(curl -fsSL https://starship.rs/install.sh)"

 # -- ZSH -- #
 sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" 

 # -- SHELL -- #
 chsh -s /usr/bin/zsh

# -- Update -- #
 sudo xbps-install -Suvy
 sudo xbps-remove -Ooy
