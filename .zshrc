# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export PATH="/usr/local/sbin:$PATH"
export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$PATH"

# Path to your oh-my-zsh installation.
export ZSH=/Users/flame/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="cypher"


# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
 COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"


  export ZPLUG_HOME=/usr/local/opt/zplug
  source $ZPLUG_HOME/init.zsh

  zplug "zsh-users/zsh-syntax-highlighting", defer:2
# Make sure to use double quotes
  zplug "zsh-users/zsh-history-substring-search", defer:3

  bindkey '^[[A' history-substring-search-up
  bindkey '^[[B' history-substring-search-down 

  zplug "b4b4r07/enhancd", use:init.sh
  
  # zplug check returns true if the given repository exists
  if zplug check b4b4r07/enhancd; then
    # setting if enhancd is available
    export ENHANCD_FILTER=fzy
  fi


  zplug load --verbose

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git brew extract osx zsh-syntax-highlighting)

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
 alias zshconfig="nvim ~/.zshrc"
 alias ohmyzsh="nvim ~/.oh-my-zsh"
#
bindkey -v

# VERY IMPORTANT
alias sudo='sudo '
alias vim="nvim"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

