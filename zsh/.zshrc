#!/bin/sh
# eval "$(starship init zsh)" it's bs


stty stop undef		# Disable ctrl-s to freeze terminal, ctrl-q to unfreeze default behavior of terminal (but you might wanna have it binded to somethign else like to save in nvim instead of :w)

# History in cache directory:
HISTSIZE=10000000
SAVEHIST=10000000
# history location
HISTFILE=~/.zsh_history
setopt inc_append_history




# Created by Zap installer (its a plugin by chris@machine himself that fast installs plugins supported by zap ofcourse)
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"


# source using ZAP
plug "$HOME/.config/zsh/aliases.zsh"


# installing plugins supported by zap for zsh shell
plug "zsh-users/zsh-autosuggestions"
plug "zap-zsh/supercharge"
plug "zsh-users/zsh-syntax-highlighting"
plug "zap-zsh/atmachine-prompt"
plug "zap-zsh/fzf"
plug "zap-zsh/vim"
plug "hlissner/zsh-autopair"
plug "zsh-users/zsh-history-substring-search"

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down

if command -v batcat &> /dev/null; then
  alias cat="batcat -pp --theme \"Visual Studio Dark+\"" 
  alias catt="batcat --theme \"Visual Studio Dark+\"" 
fi


# Load and initialise completion system
autoload -Uz compinit
compinit

bindkey '^ ' autosuggest-accept

# A code function i created
code() {
  local folder="${1:-.}"
  codium --remote wsl+Debian "$(realpath "$folder")"
}

alias ls='eza --icons --group-directories-first'  # zap-zsh/supercharge overrides thsi if you place it on top so have it after zap-zsh/supercharge
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# add go to path
export PATH=/usr/local/go/bin:$PATH
