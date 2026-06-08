#!/bin/sh
HISTSIZE=1000000
SAVEHIST=1000000
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups


export EDITOR=nvim
export LESSHISTFILE=-

eval "$(fnm env --use-on-cd --shell zsh)"

eval "$(zoxide init zsh)"

eval "$(/opt/homebrew/bin/brew shellenv)"

export FZF_DEFAULT_OPTS=$'--color=fg:#c0caf5,bg:#1a1b26,hl:#2ac3de,fg+:#c0caf5,bg+:#283457
  --color=hl+:#2ac3de,info:#7aa2f7,prompt:#2ac3de,pointer:#ff007c
  --color=marker:#ff5da0,spinner:#ff007c,header:#ff9e64,query:#c0caf5
  --color=border:#27a1b9,separator:#ff9e64,gutter:#283457'

export FZF_DEFAULT_COMMAND='rg --files --follow --no-ignore-vcs --hidden -g "!{node_modules/*,.git/*}"'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# golang
export GOPATH=$HOME/.go
export PATH=$PATH:$GOPATH/bin
