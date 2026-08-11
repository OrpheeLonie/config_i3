set -o vi

screen="HDMI-1"
alias multiScreen='xrandr --output "${screen}" --auto --right-of eDP-1'
alias rotateScreenRight='xrandr --output "${screen}" --rotate right --auto'
alias rotateScreenLeft='xrandr --output "${screen}" --rotate left --auto'
alias rotateScreenNormal='xrandr --output "${screen}" --rotate normal --auto'

export EDITOR=nvim
export MANPAGER='nvim +Man!'

alias keyboardGb='setxkbmap -layout gb'
alias keyboardFR='setxkbmap -layout fr'

alias egrep='egrep --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn,.idea,.tox,venv}'
alias vim=nvim
alias emacs='emacs -nw'

alias start_ibus='ibus start'
alias disable_ipv6='echo sysctl -w net.ipv6.conf.all.disable_ipv6=1'
alias enable_ipv6='echo sysctl -w net.ipv6.conf.all.disable_ipv6=0'
alias resync_clock='echo timedatectl set-ntp 1'

shopt -s autocd

bind 'set completion-ignore-case On'
