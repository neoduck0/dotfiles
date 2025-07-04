#!/usr/bin/env bash

for base in gitconfig zprofile zshenv zshrc; do
	rm -rf ~/.$base
	ln -sf ~/Projects/dotfiles/content/$base ~/.$base
done

for config in fastfetch ghostty hypr mako nvim rofi waybar yt-dlp; do
	rm -rf ~/.config/$config
	ln -sf ~/Projects/dotfiles/content/config/$config ~/.config/$config
done

rm -rf ~/.local/bin
ln -sf ~/Projects/dotfiles/content/local/bin ~/.local/bin
