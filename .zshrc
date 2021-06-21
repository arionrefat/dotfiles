# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi

# Starship prompt
eval "$(starship init zsh)"

#FZF completion
source /usr/share/fzf/completion.zsh
source /usr/share/fzf/key-bindings.zsh

### "bat" as manpager
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

alias ls='lsd'
alias grep='grep --colour=auto'

codi() {
   local syntax="${1:-python}"
   shift
   nvim -c \
     "let g:startify_disable_at_vimenter = 1 |\
     set bt=nofile ls=0 noru nonu nornu |\
     hi CodiVirtualText guifg=red
     hi ColorColumn ctermbg=NONE |\
     hi VertSplit ctermbg=NONE |\
     hi NonText ctermfg=0 |\
     Codi $syntax" "$@"
}
