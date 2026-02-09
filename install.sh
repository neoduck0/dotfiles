#!/usr/bin/env bash

root_path=$(cd $(dirname $0) && pwd)
content_path=$root_path/content

for f in icons themes gitconfig zprofile zshenv zshrc; do
	rm -rf ~/.$f
	ln -sf $content_path/home/$f ~/.$f
done

for f in $(ls $content_path/home/config); do
	rm -rf ~/.config/$f
	ln -sf $content_path/home/config/$f ~/.config/$f
done

mkdir -p ~/.local/bin
for f in $(ls $content_path/home/local/bin); do
    rm -rf ~/.local/bin/$f 
    ln -sf $content_path/home/local/bin/$f ~/.local/bin/$f 
done 

for f in $(ls $content_path/etc); do
    sudo rm -rf /etc/$f
    sudo ln -sf $content_path/etc/$f /etc/$f
done

. $root_path/apply-themes.sh
