#!/bin/sh
BLANK='#00000000'
CLEAR='#00000000'
DEFAULT='#000000'
TEXT='#bebebe'
WRONG='#ff4444'
VERIFYING='#ff4444'
import -window root /tmp/lockScreen.png
convert /tmp/lockScreen.png -blur 0x9 /tmp/lockScreen.png
i3lock -e                    \
--insidever-color=$CLEAR     \
--ringver-color=$VERIFYING   \
--insidewrong-color=$CLEAR   \
--ringwrong-color=$WRONG     \
--inside-color=$BLANK        \
--ring-color=$DEFAULT        \
--line-color=$BLANK          \
--separator-color=$DEFAULT   \
--verif-color=$TEXT          \
--wrong-color=$TEXT          \
--time-color=$TEXT           \
--date-color=$TEXT           \
--layout-color=$TEXT         \
--keyhl-color=$WRONG         \
--bshl-color=$WRONG          \
--clock                      \
--indicator                  \
--time-str="%H:%M:%S"        \
--date-str="%A, %d %m %Y"    \
-i /tmp/lockScreen.png
