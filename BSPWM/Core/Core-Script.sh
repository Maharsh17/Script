# -- Configure WM -- #

 # -- GTK Theme -- #
 git clone https://github.com/dracula/gtk Dracula
 sudo mv Dracula/ /usr/share/themes/

 # -- Starship Prompt -- #
 wget https://github.com/starship/starship/releases/latest/download/starship-x86_64-unknown-linux-musl.tar.gz
 tar -xf starship-x86_64-unknown-linux-musl.tar.gz
 sudo mv starship /bin/
 rm -rf starship-x86_64-unknown-linux-musl.tar.gz

 # -- BSPWM Config -- #
  
 # -- Clone Repo -- #
  git clone https://github.com/Maharsh17/Dot.git
  cd Dot/BSPWM/
  rm README.md

 # -- Configs -- #
  mkdir -p  ~/.config/
  mv bspwm/ dunst/ picom/ polybar/ sxhkd/ alacritty/ kitty/ ~/.config/

 # -- Icons -- #
  sudo mv icons/* /usr/share/icons/

 # -- Fonts -- #
  sudo mv fonts/* /usr/share/fonts/
  fc-cache -f -v

 # -- Wallpaper -- #
  mkdir ~/Wall/
  mv wallpaper/* ~/Wall/

 # -- GTK 3 Config -- #
  mkdir -p ~/.config/gtk-3.0/
  mv settings.ini ~/.config/gtk-3.0

 # -- GTK 2 Config -- #
  rm ~/.gtkrc-2.0
  mv .gtkrc-2.0 ~/

 # -- Bash Config -- #
  rm ~/.bashrc
  mv .bashrc ~/

 # -- XINITRC -- #
  mv .xinitrc ~/
  rm -rf *

 # -- Remove Directory -- #
  cd .. ; cd ..
  rm -rf Dot/
