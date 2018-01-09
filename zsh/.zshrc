# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="zagnoster2"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git colorize mvn gradle vagrant branch colored-man-pages dircycle dirhistory docker docker-compose gradle)

export DEFAULT_USER=zamars
export GOPATH=$HOME/dev/go
export GO15VENDOREXPERIMENT=1
export PATH="$GOPATH/bin:$PATH:$HOME/bin"

LESS="$LESS -q"