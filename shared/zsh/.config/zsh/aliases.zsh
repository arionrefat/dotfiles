#!/bin/sh
# Colorize grep output (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# easier to read disk
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB

#search content with ripgrep
alias rg="rg --sort path"

#Fzf with bat preview
alias fzfp="fzf --preview 'bat --style=numbers --color=always --line-range :500 {}'"
