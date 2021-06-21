# ~/.config/fish/config.fish

starship init fish | source

set fish_greeting

### "bat" as manpager
set -x MANPAGER "sh -c 'col -bx | bat -l man -p'"

