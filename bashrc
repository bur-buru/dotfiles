# burburu .bashrc
#
# If not running interactively, don't do anything
if [[ $- != *i* ]] ; then
	return
fi

# Sway auto start tty1
if [ "$(tty)" = "/dev/tty1" ]; then
        exec sway
fi

# powerline
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /usr/share/powerline/bindings/bash/powerline.sh

# Prompt
PS1='[\u@\h \W]\$ '

# Setting UTF-8 terminal support
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# history ignore dups
export HISTCONTROL=ignoredups

# User bin folders
#export PATH="$HOME/bin:$PATH"
#export PATH="$HOME/bin/twitch:$PATH"

# If user ID is greater than or equal to 1000 & if ~/bin exists and is a directory & if ~/bin is not already in your $PATH
# then export ~/bin to your $PATH.
if [[ $UID -ge 1000 && -d $HOME/bin && -z $(echo $PATH | grep -o $HOME/bin) ]]
then
    export PATH="${PATH}:$HOME/bin"
fi

# Files to source
source /usr/share/fzf/key-bindings.bash
source /usr/share/fzf/completion.bash

# Default apps
export EDITOR=/usr/bin/vim
export VISUAL=/usr/bin/subl
export BROWSER=/usr/bin/chrome

# line wrap on window resize
shopt -s no_empty_cmd_completion
shopt -s histappend
shopt -s checkwinsize
shopt -s autocd

### ALIAS's ###
# color ls
alias ls='ls --color=auto'
#BSD#@export CLICOLOR=1
#GNU#@alias ls='ls --color=auto'
alias grep='grep --colour=auto'
alias egrep='egrep --colour=auto'
alias fgrep='fgrep --colour=auto'

# streamlink
alias streamlink='streamlink -p mpv'

# Pacman
alias update="sudo pacman -Syu"
#alias install="sudo pacman -Syu " 

# visual studio
alias code="codium"

# browsers
alias chrome="chromium &"

# file managers
alias nemo="nemo &"

# wifi
alias wifi="sudo wpa_supplicant -B -i wlp1s0 -c /etc/wpa_supplicant/wpa_supplicant.conf"

#ping
alias pingy="ping -c 3 google.com"

# firefox
alias firefox="MOZ_ENABLE_WAYLAND=1 firefox &"

# Try to keep environment pollution down, EPA loves us.
unset use_color sh

# import enviornment
systemctl --user import-environment

#pgp 
unset SSH_AGENT_PID
if [ "${gnupg_SSH_AUTH_SOCK_by:-0}" -ne $$ ]; then
	  export SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"
fi

export GPG_TTY=$(tty)
gpg-connect-agent updatestartuptty /bye >/dev/null
