export QT_QPA_PLATFORMTHEME="qt5ct"
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"

#Default Apps
export BROWSER=/usr/bin/brave
export EDITOR=/usr/bin/nvim
export VISUAL=/usr/bin/nvim
export READER=/usr/bin/zathura
export IMAGE=/usr/bin/sxiv

# Path for doom
export PATH="$HOME/.emacs.d/bin:$PATH"

# Cargo
. "$HOME/.cargo/env"
export PATH="$PATH:/home/refat/.cargo/bin"

# Go env
export GOPATH=$HOME/.go
export PATH=$PATH:$(go env GOPATH)/bin

export COLORTERM="truecolor"

# zsh config dir
export ZDOTDIR=$HOME/.config/zsh

#NNN
export NNN_PLUG='f:finder;o:fzopen;p:preview-tui;d:diffs;v:imgview;w:preview-tabbed'
export NNN_USE_EDITOR=1
export NNN_FIFO=/tmp/nnn.fifo

xmodmap ~/.Xmodmap
