#!/bin/bash

# i3
cp i3/i3conf ~/.config/i3/config
cp i3/statusconf ~/.config/i3status/config
cp i3/lock.sh ~/lock.sh
chmod +x ~/lock.sh

# xfce
tar xzf xfce/xfce4-backup.tar.gz -C ~

# neovim
# install vim-plug:
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cp misc/initvim ~/.config/nvim/init.vim

# litexl
cp litexl/config ~/.config/lite-xl/init.lua
cp litexl/sakura ~/.config/lite-xl/colors/sakura.lua

# other configs
cp misc/htoprc ~/.config/htop/htoprc
cp misc/Xresources ~/.Xresources
cp misc/nanorc ~/.nanorc
cp misc/bashrc ~/.bashrc
cp misc/zshrc ~/.zshrc
cp misc/tmuxconf ~/.tmux.conf
cp misc/litexl ~/.config/lite-xl/init.lua

mkdir -p ~/.config/rofi/themes
cp misc/rofitheme ~/.config/rofi/themes/aethari.rasi
