#!/usr/bin/env bash

content_path=$(cd $(dirname $0) && pwd)/content

for f in gitconfig zprofile zshenv zshrc; do
	rm -rf ~/.$f
	ln -sf $content_path/home/$f ~/.$f
done

for f in $(ls $content_path/home/config); do
	rm -rf $XDG_CONFIG_HOME/$f
	ln -sf $content_path/home/config/$f $XDG_CONFIG_HOME/$f
done

mkdir -p ~/.local/bin
for f in $(ls $content_path/home/local/bin); do
    rm -rf ~/.local/bin/$f 
    ln -sf $content_path/home/local/bin/$f ~/.local/bin/$f 
done 

sudo rm -rf /etc/keyd/default.conf
sudo ln -sf $content_path/etc/keyd/default.conf /etc/keyd/default.conf
