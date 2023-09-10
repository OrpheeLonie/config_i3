set -o vi

screen="HDMI-1"
alias multiScreen='xrandr --output "${screen}" --auto --right-of eDP-1'
alias rotateScreenRight='xrandr --output "${screen}" --rotate right --auto'
alias rotateScreenLeft='xrandr --output "${screen}" --rotate left --auto'
alias rotateScreenNormal='xrandr --output "${screen}" --rotate normal --auto'

export EDITOR=nvim
# export MANPAGER='nvim +Man!'

alias keyboardGb='setxkbmap -layout gb'
alias keyboardFR='setxkbmap -layout fr'

alias egrep='egrep --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn,.idea,.tox,venv}'
alias vim=nvim
