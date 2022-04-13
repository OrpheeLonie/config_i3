# Print shell input lines as they are read.
set -v
# exit on error
set -e

# install rofi if it is not already installed
if [ -z "$(rofi --verion)" ] then
    apt install rofi
fi

# install zsh if it is not already installed
if [ -z "$(zsh --verion)" ] then
    apt install zsh
fi

# import config from shellrc.sh
for shell in bash zsh
do
    shellrc="$HOME"/."$shell"rc
    sourceShellrc="source \"$HOME\"/.shellrc.sh"
    if [ ( -f "$shellrc" )
        -a ( -z cat "$HOME"/."$shell"rc | grep "$sourceShellrc" ) ] then
        echo "$sourceShellrc" >> "$shellrc"
    fi
done
