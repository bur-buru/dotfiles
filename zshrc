#==============================================================================
#                               Exports
#==============================================================================
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export ARCHFLAGS="-arch x86_64"
export MANPATH="/usr/local/man:$MANPATH"
export SSH_KEY_PATH="~/.ssh/rsa_id"
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"

# Set Paths
export PATH=$HOME/bin:/usr/local/bin:$PATH

#==============================================================================
#	                     zsh Options
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e

#==============================================================================
#                                Theme
#==============================================================================
# font mode must be set before theme selection
POWERLEVEL9K_MODE="nerdfont-complete"
#POWERLEVEL9K_MODE="awesome-fontconfig"
#POWERLEVEL9K_MODE="awesome-patched"

#==============================================================================
# 		            Powerline Daemon
powerline-daemon -q
. /usr/lib/python3.7/site-packages/powerline/bindings/zsh/powerline.zsh

# PowerLevel10k without oh-my-zsh
source /usr/share/zsh-theme-powerlevel9k/powerlevel9k.zsh-theme

#==============================================================================
#		    Customise the Powerlevel9k prompts
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
POWERLEVEL9K_CUSTOM_USER="echo -n '\ufb8a'"

#==============================================================================
#		          User & Host Display
#artii "$USER @ $HOST =>" --font ogre | lolcat
echo $USER "@" $HOST

### MUST BE LAST!!! ??? ###
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
