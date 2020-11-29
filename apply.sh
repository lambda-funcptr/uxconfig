#!/bin/sh

cd $(dirname $0)/build

if [ ! -z "$(command -v i3)" ]; then
    echo "Applying i3 config..."
    mkdir -p ~/.config/i3/
    mkdir -p ~/.config/i3status/

    cp config.i3 ~/.config/i3/config
    cp config.i3status ~/.config/i3status/config
fi

if [ ! -z "$(command -v squeekboard)" ]; then
    echo "Installing custom squeekboard keyboards..."
    mkdir -p ~/.local/share/squeekboard/keyboards
    cp config/squeekboard/* ~/.local/share/squeekboard/keyboards
fi

cp .zshrc ~/.zshrc

if [ ! -z "$(command -v i3)" ]; then
    echo "Applying .Xresources file..."
    cp .Xresources ~/.Xresources
fi