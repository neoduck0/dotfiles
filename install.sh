#!/usr/bin/env bash

content_path=$(cd $(dirname $0) && pwd)/content

for f in themes gitconfig zshenv; do
	rm -rf ~/.$f
	ln -sf $content_path/$f ~/.$f
done

mkdir -p ~/.config
for f in $(ls $content_path/config); do
	rm -rf ~/.config/$f
	ln -sf $content_path/config/$f ~/.config/$f
done

mkdir -p ~/.local/bin
for f in $(ls $content_path/local/bin); do
    rm -rf ~/.local/bin/$f
    ln -sf $content_path/local/bin/$f ~/.local/bin/$f
done

mkdir -p ~/.local/share
for f in $(ls $content_path/local/share); do
    rm -rf ~/.local/share/$f
    ln -sf $content_path/local/share/$f ~/.local/share/$f
done
