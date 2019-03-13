# export ZSH_DISABLE_COMPFIX=false

# this doesn't work if there is more than one level of symlinks
ME_PATH=${(%):-%x}
ME_DIR=$(dirname $ME_PATH)
[[ -f $ME_DIR/.zshrc-private ]] && source $ME_DIR/.zshrc-private

# Path to your oh-my-zsh installation.
export ZSH=/Users/$USER/.oh-my-zsh
export EDITOR=mate
export VISUAL=mate
export GIT_EDITOR="mate -w"
export JAVA_HOME=$(/usr/libexec/java_home)
# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel9k/powerlevel9k"
#POWERLEVEL9K_MODE=awesome-patched
POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status command_execution_time time)
POWERLEVEL9K_STATUS_OK=false
POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR='\uE0B4'
#POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR='\uE0C0'
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR='\uE0B6'
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%F{004}╭\uE0B6%{$reset_color%}"
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%F{004}╰─▶ %{$reset_color%}%f%b%k"
#POWERLEVEL9K_LEFT_SEGMENT_END_SEPARATOR='%F{004}\u2593\u2592\u2591'
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_FOREGROUND="red"
#POWERLEVEL9K_TIME_FORMAT="%D{%I:%M%p \uE868  %a %m/%d/%y}"
POWERLEVEL9K_TIME_FORMAT="%D{%I:%M%p %a %m/%d/%y}"
POWERLEVEL9K_PROMPT_ON_NEWLINE=true

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git osx colorize gradle vagrant branch colored-man-pages dircycle dirhistory docker docker-compose)

source $ZSH/oh-my-zsh.sh

# User configuration

export GEM_HOME=$HOME/gems

export GO15VENDOREXPERIMENT=1
export PATH="$PATH:$HOME/bin:$GEM_HOME/bin"
LESS="$LESS -q"
test -e ${HOME}/.iterm2_shell_integration.zsh && source ${HOME}/.iterm2_shell_integration.zsh
alias ls="colorls --gs"
alias l="colorls -l --gs"
alias ll="colorls -l --gs"
alias k=kubectl
function c() {
    [ -n "$1" ] && pygmentize -O style=monokai -f console256 -g $1 | less
}
#alias c="pygmentize -f console256 -g | less"
alias diff=colordiff

