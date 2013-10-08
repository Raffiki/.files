# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh


# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#source /usr/local/lib/python2.7/dist-packages/powerline/bindings/zsh/powerline.zsh
ZSH_THEME="powerline"

source $ZSH/oh-my-zsh.sh
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"
# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

POWERLINE_RIGHT_A="mixed"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)


# use vi keybindings in zsh
bindkey -v

alias tmux="TERM=screen-256color-bce tmux"

export TERM="xterm-256color"


export PATH=$PATH:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games

### Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

###GO
export PATH=$PATH:/usr/local/go/bin

###JAVA
export JAVA_HOME="/usr/lib/jvm/java-7-openjdk-amd64/"
PATH=$JAVA_HOME/bin:$PATH

###Maven
export M2_HOME=/usr/local/apache-maven/apache-maven-3.1.0
export M2=$M2_HOME/bin
PATH=$M2:$PATH
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

###NPM
NPM_PACKAGES="~/.npm-packages"
NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"
PATH="$NPM_PACKAGES/bin:$PATH"
unset MANPATH
MANPATH="$NPM_PACKAGES/share/man:$(manpath)"

###NVM
source ~/.nvm/nvm.sh 

###rvm
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "/home/andre/.rvm/scripts/rvm" ]] && source "/home/andre/.rvm/scripts/rvm"
[[ -s "/home/andre/.rvm/scripts/rvm" ]] && source "/home/raph/.rvm/scripts/rvm"


###SYMFONY
alias cc='php app/console cache:clear'

##Dircolors
eval `dircolors ~/.solarized/dircolors-solarized/dircolors.256dark`
