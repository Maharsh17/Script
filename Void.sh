#!/bin/bash

# -- Updating -- #
 sudo xbps-install -u xbps
 sudo xbps-install -Suvy
 sudo xbps-remove -Oo

# -- Installing Important Tools -- #

 # -- Audio -- #
 sudo xbps-install pulseaudio ffmpeg libavcodec -y

 # -- Video -- #
 sudo xbps-install xorg xf86-video-amdgpu mesa xf86-video-ati psmisc -y

 # -- Terminal -- #
 sudo xbps-install alacritty kitty -y

 # -- WM -- #
 sudo xbps-install bspwm sxhkd polybar rofi picom -y

 # -- Other -- #
 sudo xbps-install xtools nitrogen git wget curl tar unzip lxappearance font-iosevka binutils xz -y

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
 
# -- Polybar -- #
git clone https://github.com/adi1090x/polybar-themes
cd polybar-themes
./setup.sh

# -- Starship Prompt -- #
 wget https://github.com/starship/starship/releases/latest/download/starship-x86_64-unknown-linux-musl.tar.gz
 tar -xf starship-x86_64-unknown-linux-musl.tar.gz
 sudo mv starship /bin/
 rm -rf starship-x86_64-unknown-linux-musl.tar.gz

# -- Update -- #
 sudo xbps-install -Suvy
 sudo xbps-remove -Ooy
