# i3
cp i3/i3conf ~/.config/i3/config
cp i3/statusconf ~/.config/i3status/config

# xfce
tar xzf xfce/xfce4-backup.tar.gz -C ~

# neovim
# install vim-plug:
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cp misc/initvim ~/.config/nvim/init.vim

# other configs
cp misc/htoprc ~/.config/htop/htoprc
cp misc/Xresources ~/.Xresources
cp misc/nanorc ~/.nanorc
cp misc/bashrc ~/.bashrc
cp misc/tmuxconf ~/.tmux.conf
