#!/bin/sh

i3lockWithRandomWallpaper() {
    imgIn="$(find ~/Pictures/Wallpaper/ -name "*.jpg" | shuf -n1)"
    imgOut='/tmp/i3lockWallpaper.png'

    if [ ! -f "$imgIn" ]
    then
        exit 1
    fi

    size=$(xrandr 2> /dev/null | sed -e '/^[a-zA-Z]/d' -e 's/.*\([0-9]\{4\}x[0-9]*\).*\*.*/\1/g' -e '/^[^0-9]/d')
    echo "converting image"
    convert "$imgIn" -resize "$size"^ "$imgOut"
    echo "image has been converted"
    i3lock -i "$imgOut"
}

i3lockWithRandomWallpaper
