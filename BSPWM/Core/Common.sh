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
 git clone https://github.com/Maharsh17/Dot.git
 cd Dot/BSPWM/
 rm README.md

 mkdir -p  ~/.config/
 mv bspwm/ picom/ polybar/ sxhkd/ alacritty/ kitty/ ~/.config/

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

 cd .. ; cd ..
 rm -rf Dot/
