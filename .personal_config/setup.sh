# Print shell input lines as they are read.
set -v
# exit on error
set -e

# install some application
for app in rofi zsh
do
    if [ -z "$($app --verion)" ]
    then
        apt install $app
    fi
done

# import config from shellrc.sh
for shell in bash zsh
do
    shellrc="$HOME"/."$shell"rc
    sourceShellrc="source \"$HOME\"/.shellrc.sh"
    if [ ( -f "$shellrc" )
        -a ( -z cat "$HOME"/."$shell"rc | grep "$sourceShellrc" ) ]
    then
        echo "$sourceShellrc" >> "$shellrc"
    fi
done
