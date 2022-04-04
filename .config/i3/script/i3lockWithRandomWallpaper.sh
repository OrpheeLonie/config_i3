#!/bin/sh

i3lockWithRandomWallpaper() {
    imgIn="$(find ~/Pictures/Wallpaper/ -name "*.jpg" | shuf -n1)"
    imgOut='/tmp/i3lockWallpaper.png'

    if [ ! -f "$imgIn" ]
    then
        exit 1
    fi

    echo "converting image"
    convert "$imgIn" -resize 1366x768^ "$imgOut"
    echo "image has been converted"
    i3lock -i "$imgOut"
}

i3lockWithRandomWallpaper
