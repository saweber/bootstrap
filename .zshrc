export ZSH="/Users/sweber/.oh-my-zsh"

export NVM_DIR="$HOME/.nvm"
# For zsh-nvm - faster zsh loading
#export NVM_LAZY_LOAD=true
export NVM_AUTO_USE=true
export NVM_COMPLETION=true # too slow

# For pasting into zsh - disable autosuggest for large pastes
export ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# oh-my-zsh - for faster pasting - turns off bracketed-paste-magic and url-quote-magic
export DISABLE_MAGIC_FUNCTIONS=true

# oh-my-zsh managed
plugins=(
  zsh-nvm # custom plugin
  aws
  docker
  docker-compose
  dotnet
  git
  osx
  node
  npm
  # nvm
  sudo
  vi-mode
  wd
)

source $ZSH/oh-my-zsh.sh

# homebrew managed
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# zsh additional completions
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

  autoload -Uz compinit
  compinit
fi

source ~/.credentials

#bindkey '^ ' autosuggest-execute
bindkey '^ ' autosuggest-accept
bindkey '^b' backward-word
bindkey '^f' forward-word
bindkey '^u' kill-whole-line
bindkey '^j' backward-kill-line
bindkey '^k' kill-line
bindkey '^l' list-choices

export CONNECTION_STRING="Host=localhost;Port=1433;Database=master;Username=sa;Password=Testing1!;"	
export TEST_CONNECTION_STRING="Host=localhost;Port=1434;Database=master;Username=sa;Password=Testing1!"

# for tmux colors
export TERM=xterm-256color

# starship theme
eval "$(starship init zsh)"

# nvm - using zsh-nvm instead
#[ -s "$(brew --prefix)/opt/nvm/nvm.sh" ] && . "$(brew --prefix)/opt/nvm/nvm.sh" # This loads nvm

# begin android simulator
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

export GRADLE_HOME="$HOME/.gradle"
# end android simulator

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
