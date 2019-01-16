#!/bin/bash
if [ "$TERM" = "linux" ]; then
  /bin/echo -e "
  \e]P0212527
  \e]P1cf0b00
  \e]P2008835
  \e]P3fb9c00
  \e]P4004aed
  \e]P57a00c7
  \e]P6004aed
  \e]P7c9c9c9
  \e]P8969896
  \e]P9ff0e00
  \e]PA00b647
  \e]PBfb9c00
  \e]PC0050ff
  \e]PD9c00ff
  \e]PE0050ff
  \e]PFffffff
  "
  # get rid of artifacts
  clear
fi

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /usr/share/powerline/bindings/bash/powerline.sh


[ -f ~/.fzf.bash ] && source ~/.fzf.bash
