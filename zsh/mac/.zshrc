# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# export ZSH_DISABLE_COMPFIX=false

# Path to your oh-my-zsh installation.
export ZSH=/Users/zamars/.oh-my-zsh
EDITOR=mate
GIT_EDITOR="mate -w"
M2_HOME=$(cd $(dirname $(echo $(dirname $(which mvn))/$(readlink $(which mvn))))/../; pwd)
export JAVA_HOME=$(/usr/libexec/java_home)
# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="zagnoster2"
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

source /Users/zamars/.rbenv/versions/2.4.2/lib/ruby/gems/2.4.0/gems/colorls-1.1.1/lib/tab_complete.sh

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git osx colorize mvn gradle vagrant branch colored-man-pages dircycle dirhistory docker docker-compose)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export DEFAULT_USER=zamars
export GOPATH=$HOME/dev/go
export GO15VENDOREXPERIMENT=1
export PATH="$GOPATH/bin:$PATH:$HOME/bin:$HOME/dev/istio/versions/current/bin"
export PATH="/usr/local/opt/python/libexec/bin:$PATH:$HOME/dev/sas/go/sonder/build/tools/darwin"
export WORKON_HOME=~/python/envs
source /usr/local/bin/virtualenvwrapper.sh
alias fixopenwith='/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user'
LESS="$LESS -q"
test -e ${HOME}/.iterm2_shell_integration.zsh && source ${HOME}/.iterm2_shell_integration.zsh
eval "$(rbenv init -)"
alias la="exa -l"
alias ls="colorls --gs"
alias l="colorls -l --gs"
alias ll="colorls -l --gs"
function c() {
    [ -n "$1" ] && pygmentize -O style=monokai -f console256 -g $1 | less
}
#alias c="pygmentize -f console256 -g | less"
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
alias diff=colordiff

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/zamars/.sdkman"
[[ -s "/Users/zamars/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/zamars/.sdkman/bin/sdkman-init.sh"
