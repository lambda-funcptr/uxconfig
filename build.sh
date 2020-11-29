#!/bin/sh

cd $(dirname $0)

rm -r build
mkdir -p build

for file in i3/*.config; do
    echo "# From: $file" >> build/config.i3
    cat $file >> build/config.i3
    echo "" >> build/config.i3
done

if [ -f "i3/host-specific/$(hostname -s).config" ]; then
    echo "# From: i3/host-specific/$(hostname -s).config" >> build/config.i3
    cat "i3/host-specific/$(hostname -s).config" >> build/config.i3
fi

for file in i3status/*.config; do
    echo "# From: $file" >> build/config.i3status
    cat $file >> build/config.i3status
    echo "" >> build/config.i3status
done

if [ -f "i3status/host-specific/$(hostname -s).config" ]; then
    echo "# From: i3status/host-specific/$(hostname -s).config" >> build/config.i3status
    cat "i3status/host-specific/$(hostname -s).config" >> build/config.i3status
fi

cp Xresources/.Xresources build/.Xresources

echo "" >> build/.Xresources
cat external/solarized/Xresources.light >> build/.Xresources

if [ -f "Xresources/.Xresources.$(hostname -s).config" ]; then
    echo "" >> build/.Xresources
    echo "Xresources.Xresources.$(hostname -s).config" >> build/.Xresources
fi

for file in zsh/*.zshrc; do
    echo "# From: $file" >> build/.zshrc
    cat $file >> build/.zshrc
    echo "" >> build/.zshrc
done

cp -r squeekboard build/squeekboard