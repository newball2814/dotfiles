#!/bin/sh

red="\033[1;31m"
bgreen="\033[1;32m"

# Apps
APP="feh vim neovim firefox zathura mpd mpv ncmpcpp tint2 alacritty kitty emacs pcmanfm base-devel yay noto-fonts-cjk dunst bspwm sxhkd"

# Begin installation 
printf "----------------------------------------------------------------------\n"
printf "${bgreen}Installing software for freshly installed Arch Linux machine.\n"
printf "${bgreen}Please ensure internet connections before the installation.\n"
sleep 3
printf "${red}Consider creating backups of your configs as this will replace all current configs.\n"
read -p "Proceed with the installation? [y/n]:" choice

case "$choice" in
    y*|Y*) 
        sleep 2 
        printf "Starting installation...\n"
        sleep 2
        printf "${bgreen}Copying dotfiles...\n"
        cp -r ./config/* $HOME/.config
        cp -r ./hidden $HOME
        cp -r ./walls $HOME
        printf "${bgreen}Copying completed!\n"
        sleep 3
        printf "${bgreen}These softwares will be installed:\n"
        for i in $APP;
        do
            printf $i
            printf " "
        done
        printf "\n"
        sleep 5
        printf "${bgreen}Installing softwares...\n" 
        sudo pacman -Syu --noconfirm $APP
        git clone https://aur.archlinux.org/yay-git.git && cd yay-git && makepkg -si && cd .. && rm -rf yay-git 
        yay -S picom-jonaburg-git ly
        sudo systemctl enable ly.service
        printf "Done!\n"
    ;;
    no|No) 
        printf "${red} Aborting...!\n"
        sleep 1
    ;;
esac
