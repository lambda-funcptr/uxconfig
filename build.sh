#!/bin/sh

cd $(dirname $0)

rm config.i3
rm config.i3status

for file in i3/*.config; do
    echo "# From: $file" >> config.i3
    cat $file >> config.i3;
    echo "" >> config.i3
done

if [ -f "i3/host-specific/$(hostname -s).config" ]; then
    echo "# From: i3/host-specific/$(hostname -s).config" >> config.i3
    cat "i3/host-specific/$(hostname -s).config" >> config.i3
fi;

cat "i3/i3status/theme" >> config.i3status;