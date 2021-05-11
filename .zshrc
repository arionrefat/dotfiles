# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi

#Setting path for DOOM Emacs
PATH="$HOME/.emacs.d/bin:$PATH"

# Starship prompt
eval "$(starship init zsh)"

#FZF completion
source /usr/share/fzf/completion.zsh
source /usr/share/fzf/key-bindings.zsh

### "bat" as manpager
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

alias ls='lsd'
alias grep='grep --colour=auto'
