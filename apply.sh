#!/bin/sh

mkdir -p ~/.config/i3/
mkdir -p ~/.config/i3status/

cp config.i3 ~/.config/i3/config
cp config.i3status ~/.config/i3status/config

cp zsh/zshrc ~/.zshrc
cp home/.Xresources ~/.Xresources

cat external/solarized/Xresources.light >> ~/.Xresources