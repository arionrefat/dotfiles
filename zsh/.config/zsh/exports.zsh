#!/bin/sh
HISTSIZE=1000000
SAVEHIST=1000000
export PATH="$HOME/.local/bin":$PATH

export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# fnm
export PATH=/home/refat/.fnm:$PATH
eval "`fnm env`"

export LESSHISTFILE=-
eval "$(zoxide init zsh)"

export PF_INFO="ascii title os host shell wm kernel uptime pkgs palette"
export FZF_DEFAULT_OPTS='--color=fg:#f8f8f2,bg:#282a36,hl:#bd93f9 --color=fg+:#f8f8f2,bg+:#44475a,hl+:#bd93f9 --color=info:#ffb86c,prompt:#50fa7b,pointer:#ff79c6 --color=marker:#ff79c6,spinner:#ffb86c,header:#6272a4'
export FZF_DEFAULT_COMMAND='rg --files --follow --no-ignore-vcs --hidden -g "!{node_modules/*,.git/*}"'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
