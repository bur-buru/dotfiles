#!/usr/bin/zsh
# =============================================================================
#                            Magic Puddle .zshrc
# =============================================================================
#  Console Coloring
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

# =============================================================================
#                              Plugins
# =============================================================================
# plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(
  powerline
  zsh_reload
  zsh-256color
  themes
  perl
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  )

#================================
# zsh-syntax-highlighting
#================================
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)
ZSH_HIGHLIGHT_PATTERNS+=("rm -rf *" "fg=white,bold,bg=red")
typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[path]="fg=white"
ZSH_HIGHLIGHT_STYLES[path_pathseparator]="fg=grey"
ZSH_HIGHLIGHT_STYLES[alias]="fg=cyan"
ZSH_HIGHLIGHT_STYLES[builtin]="fg=cyan"
ZSH_HIGHLIGHT_STYLES[function]="fg=cyan"
ZSH_HIGHLIGHT_STYLES[command]="fg=green"
ZSH_HIGHLIGHT_STYLES[precommand]="fg=green"
ZSH_HIGHLIGHT_STYLES[hashed-command]="fg=green"
ZSH_HIGHLIGHT_STYLES[commandseparator]="fg=yellow"
ZSH_HIGHLIGHT_STYLES[redirection]="fg=magenta"
ZSH_HIGHLIGHT_STYLES[bracket-level-1]="fg=cyan,bold"
ZSH_HIGHLIGHT_STYLES[bracket-level-2]="fg=green,bold"
ZSH_HIGHLIGHT_STYLES[bracket-level-3]="fg=magenta,bold"
ZSH_HIGHLIGHT_STYLES[bracket-level-4]="fg=yellow,bold"

# =============================================================================
#                               Exports
# =============================================================================
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export TERM="xterm-256color"
export ARCHFLAGS="-arch x86_64"
export MANPATH="/usr/local/man:$MANPATH"
export PATH="$HOME/bin:/usr/local/bin:$PATH"
export ZSH="/home/$USER/.oh-my-zsh"

# ruby and ruby env
export PATH="/home/$USER/.gem/ruby/2.6.0/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

#  SSH
export SSH_KEY_PATH="~/.ssh/rsa_id"
#  JAVA_HOME
# export JAVA_HOME=`/usr/libexec/java_home`
#  SET_ENV_FOR_ALL
# export PATH=$JAVA_HOME/bin:$PATH

# =============================================================================
#                             sourced files
# =============================================================================
source $ZSH/oh-my-zsh.sh
# ruby
# source $HOME/.zshenv
source $(dirname $(gem which colorls))/tab_complete.sh
#==========  !must be sourced last to work!  ==========
#source /home/$USER/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# =============================================================================
#                                Alias
#=============================================================================
alias ll="colorls"

# =============================================================================
#                                Theme
# =============================================================================

powerline-daemon -q
. /usr/lib/python3.7/site-packages/powerline/bindings/zsh/powerline.zsh
source /usr/share/zsh-theme-powerlevel9k/powerlevel9k.zsh-theme

#Change com line
#PROMPT='%{$reset_color%}%n %{$fg[green]%}{%{$reset_color%}%~%{$fg[green]%}}%{$reset_color%}$(git_prompt_info)%{$fg[green]%}%{$fg[red]%} $%{$reset_color%} '

# font mode
#POWERLEVEL9K_MODE="nerdfont-complete"
#POWERLEVEL9K_MODE="awesome-fontconfig"
#POWERLEVEL9K_MODE='awesome-patched'
# select theme
#ZSH_THEME="powerlevel9k"

# Customise the Powerlevel9k prompts
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(
  custom_arch
  dir
  vcs
)

POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(
  status
  battery
)

POWERLEVEL9K_OS_ICON="echo -n '\ue712'"

#POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=$'\uE0B1'
#POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=$'\uE0B3'

POWERLEVEL9K_CUSTOM_BATTERY="echo -n '\uf303'"
POWERLEVEL9K_CUSTOM_ARCH="echo -n '\ue712'"
POWERLEVEL9K_CUSTOM_JAVASCRIPT="echo -n '\ue781' JavaScript"

POWERLEVEL9K_VCS_BRANCH_ICON=$'\uF126 '

#POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(icons_test)

artii "MagicPuddle" --font ogre | lolcat
