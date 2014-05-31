# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
EDITOR=mate
GIT_EDITOR="mate -w"
M2_HOME=/usr/local/Cellar/maven/3.0.5
JAVA_HOME=$(/usr/libexec/java_home)
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="zach"
ZSH_THEME="zagnoster"
#ZSH_THEME=miloshadzic
DEFAULT_USER=Zach
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Quick way to rebuild the Launch Services database and get rid
# of duplicates in the Open With submenu.
alias fixopenwith='/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user'

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
plugins=(git osx colorize mvn)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

WORKON_HOME=$HOME/dev/pyenvs

# colorize a file and pipe it to less
lc() { colorize "$*" | less; }

zmvn() {
	mvn $*
	growlnotify -n mvn -m "Maven build complete in `pwd`"
}
LESS="$LESS -q"
GRADLE_HOME=/Users/Zach/dev/gradle/1.11
PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/sbin:/Users/Zach/dev/groovy/bin:$GRADLE_HOME/bin:/Users/Zach/dev/sas/altbuild:$HOME/.rvm/bin # Add RVM to PATH for scripting

source /usr/local/bin/virtualenvwrapper.sh
