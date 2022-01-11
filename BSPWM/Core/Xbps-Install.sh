#!/bin/bash

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
 sudo xbps-install xtools nitrogen git wget curl tar unzip lxappearance binutils xz dunst scrot -y

