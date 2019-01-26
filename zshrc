#==============================================================================
#                               Exports
#==============================================================================
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export ARCHFLAGS="-arch x86_64"
export MANPATH="/usr/local/man:$MANPATH"
export TERM="xterm-256color"
export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH="/home/$USER/.oh-my-zsh"
export PATH="/home/$USER/.gem/ruby/2.6.0/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export SSH_KEY_PATH="~/.ssh/rsa_id"

#==============================================================================
#                         OH-MY-ZSH Options
#==============================================================================
# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=6

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
#DISABLE_UNTRACKED_FILES_DIRTY="true"

#==============================================================================
#                               Plugins
#==============================================================================
# plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(
  alias
  powerline
  zsh_reload
  zsh-256color
  themes
  ruby
  rbenv
  perl
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

#==============================================================================
#                            sourced files
#==============================================================================
source $ZSH/oh-my-zsh.sh

# ruby
source $(dirname $(gem which colorls))/tab_complete.sh

#==========  !must be sourced last to work!  ==========
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#==============================================================================
#                          Powerline daemon
#==============================================================================
powerline-daemon -q
. /usr/lib/python3.7/site-packages/powerline/bindings/zsh/powerline.zsh

#==============================================================================
#                                Theme
#==============================================================================
# font mode must be set before theme selection
POWERLEVEL9K_MODE="nerdfont-complete"
#POWERLEVEL9K_MODE="awesome-fontconfig"
#POWERLEVEL9K_MODE='awesome-patched'

# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="powerlevel9k/powerlevel9k"

# PowerLevel9k without oh-my-zsh
source /usr/share/zsh-theme-powerlevel9k/powerlevel9k.zsh-theme

# Customise the Powerlevel9k prompts
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(
  os_icon
  ssh
  dir
  vcs
  newline
  custom_user
)

POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(
  status
  dir_writable
  battery
)

POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=$'\ue0b4'
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=$'\ue0b6'
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="↱"
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="↳ "
#POWERLEVEL9K_OS_ICON="echo -n '\ue712'"
POWERLEVEL9K_CUSTOM_ARCH="echo -n '\uf303'"
POWERLEVEL9K_VCS_BRANCH_ICON=$'\uF126 '
POWERLEVEL9K_CUSTOM_USER="echo -n '\ufb8a'"

artii "MagicPuddle =>" --font ogre | lolcat
