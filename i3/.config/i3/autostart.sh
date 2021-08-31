#!/bin/bash

function run {
 if ! pgrep $1 ;
  then
    $@&
  fi
}

run "xrandr --output HDMI-0 --primary --mode 1920x1080 --pos 1920x0 --rotate normal --output eDP-1-1 --mode 1920x1080 --pos 0x0 --rotate normal"
run "xrandr --output HDMI-0 --mode 1920x1080 --rate 75.00"
run "optimus-manager-qt"
run "xfce4-power-manager"
run "/usr/lib/xfce4/notifyd/xfce4-notifyd"
# run "dunst"
run "/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1"
picom -b  --config ~/.config/picom.conf &
run "numlockx on"
run "nitrogen --restore"
