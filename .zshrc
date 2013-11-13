# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

export PATH="/Applications/Postgres.app/Contents/MacOS/bin:$PATH"
export PGHOST=localhost
export PATH=$PATH:/Users/jod/.rvm/gems/ruby-1.9.3-p194/bin:/Users/jod/.rvm/gems/ruby-1.9.3-p194@global/bin:/Users/jod/.rvm/rubies/ruby-1.9.3-p194/bin:/Users/jod/.rvm/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
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

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$PATH:/Applications/Postgres.app/Contents/MacOS/bin:/Users/jod/.rvm/gems/ruby-1.9.3-p194/bin:/Users/jod/.rvm/gems/ruby-1.9.3-p194@global/bin:/Users/jod/.rvm/rubies/ruby-1.9.3-p194/bin:/Users/jod/.rvm/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin

# TextMate
# set path and simple shell function
export TEXTMATE_PATH=/Applications/TextMate.app/Contents/Resources/mate
mate () {
    $TEXTMATE_PATH $1 $2 $3 $4 $5 $6
}
# svn for TextMate (default editor, end-of-line types)
export EDITOR="$TEXTMATE_PATH -w"
export LC_CTYPE=en_US.UTF-8

# Coda
# set path
export CODA_PATH=/Applications/Coda.app
# function roughly like 'mate .' by expanding '.' to '*.htm*'
coda () {
if [[ "." == $1 ]]
then
    open -a $CODA_PATH *.htm*
else
    open -a $CODA_PATH $1 $2 $3
fi
}
