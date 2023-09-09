#!/bin/sh

i3lockWithRandomWallpaper() {
    imgIn="$(find ~/Pictures/Wallpaper/ | shuf -n1)"
    imgOut='/tmp/i3lockWallpaper.png'

    if [ ! -f "$imgIn" ]
    then
        exit 1
    fi

    size=1920x1080 #$(xrandr 2> /dev/null | sed -e '/^[a-zA-Z]/d' -e '/^[^\*]*$/d' -e 's/.*\([0-9]\{3,4\}x[0-9]\{3,4\}\).*/\1/g')
    echo "converting image"
    convert "$imgIn" -resize "$size"^ "$imgOut"
    echo "image has been converted"
    i3lock -i "$imgOut"
}

i3lockWithRandomWallpaper
