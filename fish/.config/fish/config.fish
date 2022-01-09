set fish_greeting
source $HOME/.config/fish/aliases.fish
fish_add_path -m ~/.local/bin
starship init fish | source
zoxide init fish | source

# "bat" as manpager
set -x MANPAGER "sh -c 'col -bx | bat -l man -p'"

#KeyBinds
bind \co 'nnn'
bind \cb 'ranger'
