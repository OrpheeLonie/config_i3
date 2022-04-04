set -o vi

alias bat='batcat'
alias MolekSyntez='~/Documents/Games/MOLEK\ SYNTEZ/start.sh'

screen="HDMI-1"
alias multiScreen='xrandr --output "${screen}" --auto --right-of eDP-1'
alias rotateScreenRight='xrandr --output "${screen}" --rotate right --auto'
alias rotateScreenLeft='xrandr --output "${screen}" --rotate left --auto'
alias rotateScreenNormal='xrandr --output "${screen}" --rotate normal --auto'
