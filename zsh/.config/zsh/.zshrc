# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

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
plug "romkatv/powerlevel10k"

# Key-bindings
bindkey -s '^b' 'joshuto^M'
bindkey -s '^o' 'ncdu^M'
bindkey -s '^f' 'nvim $(fzf)^M'
bindkey -s '^v' 'nvim\n'
bindkey -s '^z' 'zi^M'
bindkey -s '^y' 'btm^M'
bindkey -s '^g' 'lazygit^M'
bindkey -s '^a' 'clip^M'
bindkey "^p" up-line-or-beginning-search
bindkey "^n" down-line-or-beginning-search

# fnm
export PATH="/home/refat/.local/share/fnm:$PATH"
eval "`fnm env`"

# bun completions
[ -s "/home/refat/.bun/_bun" ] && source "/home/refat/.bun/_bun"

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh
