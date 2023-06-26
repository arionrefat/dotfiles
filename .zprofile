#Default Apps
export BROWSER=/usr/bin/brave
export VISUAL=/usr/bin/nvim
export EDITOR="$VISUAL"
export READER=/usr/bin/zathura
export IMAGE=/usr/bin/sxiv

# Go env
export GOPATH=$HOME/.go
export PATH=$PATH:$(go env GOPATH)/bin

# zsh config dir
export ZDOTDIR=$HOME/.config/zsh

/usr/bin/xmodmap /home/refat/.Xmodmap
