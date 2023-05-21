[ -f "$HOME/.local/share/zap/zap.zsh" ] && source "$HOME/.local/share/zap/zap.zsh"
plug "$HOME/.config/zsh/aliases.zsh"
plug "$HOME/.config/zsh/exports.zsh"

# Example install plugins
plug "zap-zsh/supercharge"
plug "zsh-users/zsh-autosuggestions"
plug "zsh-users/zsh-syntax-highlighting"
plug "hlissner/zsh-autopair"
plug "zsh-users/zsh-history-substring-search"
plug "zap-zsh/fzf"
plug "Aloxaf/fzf-tab"
plug "zap-zsh/exa"
plug "zap-zsh/vim"
plug "zap-zsh/zap-prompt"
#plug "MAHcodes/distro-prompt"

# Key-bindings
bindkey -s '^b' 'joshuto^M'
bindkey -s '^o' 'ncdu^M'
bindkey -s '^f' 'lvim $(fzf)^M'
bindkey -s '^v' 'lvim\n'
bindkey -s '^z' 'zi^M'
bindkey -s '^y' 'btm^M'
bindkey -s '^g' 'lazygit^M'
bindkey -s '^a' 'clip^M'
bindkey "^p" up-line-or-beginning-search
bindkey "^n" down-line-or-beginning-search
