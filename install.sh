#!/bin/bash

function yes_or_no {
    while true; do
        read -p "$* [y/n]: " yn
        case $yn in
            [Yy]*) return 0  ;;  
            [Nn]*) echo "Aborted" ; return  1 ;;
        esac
    done
}

sudo pacman -S bspwm polybar sxhkd dmenu nitrogen git picom
mkdir ~/.config/bspwm
mkdir ~/.config/polybar
cp /etc/polybar/config.ini ~/.config/polybar/config.ini
git clone xxx.yyy/zzz
mv ./foo/Configs/bspwmrc ~/.config/bspwm/bspwmrc
mv ./foo/Configs/sxhkdrc ~/.config/bspwm/sxhkdrc