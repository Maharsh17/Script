echo "Updating Void"
sudo xbps-install -Suvy

echo "Installing Important Tools"

# Audio
sudo xbps-install pulseaudio ffmpeg libavcodec

# Video
sudo xbps-install xorg xf86-video-amdgpu mesa xf86-video-ati

# Terminal
sudo xbps-install alacritty kitty

# WM
sudo xbps-install bspwm sxhkd polybar rofi picom

# Other
sudo xbps-install xtools git wget curl tar unzip

# Fonts

VER="v2.1.0"
mkdir User
cd User

# -- Source Code Pro 
wget https://github.com/ryanoasis/nerd-fonts/releases/download/$VER/SourceCodePro.zip 
unzip SourceCodePro.zip
rm -rf SourceCodePro.zip

# -- Jet Brains Mono
wget https://github.com/ryanoasis/nerd-fonts/releases/download/$VER/JetBrainsMono.zip
unzip JetBrainsMono.zip
rm -rf JetBrainsMono.zip

# -- Hack
wget https://github.com/ryanoasis/nerd-fonts/releases/download/$VER/Hack.zip
unzip Hack.zip
rm -rf Hack.zip

cd ..
mv User /usr/share/fonts/
fc-cache -f -v

# Configure WM

git clone https://github.com/Maharsh17/Dot.git
cd Dot
rm example.png screenshot.png Void.png README.md .xinitrc
rm -rf polybar
mv bspwm sxhkd Wall.jpg ~/.config/
mv .bashrc ~/
cd ..
chmod +x ~/.config/bspwm/bpswmrc

git clone https://github.com/adi1090x/polybar-themes
cd polybar-themes
./setup.sh
cd ..

# Starship Prompt

sh -c "$(curl -fsSL https://starship.rs/install.sh)"

# Update

sudo xbps-install -Suv

