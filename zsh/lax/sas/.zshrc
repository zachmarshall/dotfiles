# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
HISTFILE=$HOME/.zsh_history

. /sas/tools/com/sdszshrc

EDITOR=emacs

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.

ZSH_THEME="zagnoster"

DEFAULT_USER=zamars
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git colorize mvn)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

WORKON_HOME=$HOME/dev/pyenvs

# colorize a file and pipe it to less
lc() { colorize "$*" | less; }

LESS="$LESS -q"
GRADLE_HOME=$HOME/dev/gradle/current
PATH="/usr/lib64/qt-3.3/bin:/usr/kerberos/sbin:/usr/kerberos/bin:/usr/local/bin:/bin:/usr/bin:/r/ge.unx.sas.com/vol/vol620/u62/zamars/bin:/usr/local/sbin:/usr/sbin:/sbin:/sas/tools/com:$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

#source /usr/local/bin/virtualenvwrapper.sh
