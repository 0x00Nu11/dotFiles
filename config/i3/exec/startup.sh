#!/bin/sh
rm -rf $HOME/.config/i3/i3startup.log
(
if pgrep picom; then pkill picom; fi
if pgrep dunst; then pkill dunst; fi
picom --experimental-backends &
feh --bg-fill $HOME/.config/i3/bg.jpg
dunst &
autotiling
xinput set-prop "AlpsPS/2 ALPS DualPoint TouchPad" "libinput Tapping Enabled" 1
xinput set-prop "AlpsPS/2 ALPS DualPoint TouchPad" "libinput Natural Scrolling Enabled" 1
setxkbmap -model pc105+inet -layout us,ara -option grp:alt_shift_toggle
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
udiskie &
) 2>&1 | tee -a $HOME/.config/i3/i3startup.log
