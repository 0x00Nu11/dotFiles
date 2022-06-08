#!/bin/sh
LINE='#0099ff'
SEPARATOR='#0099ff'
LAYOUT='#00ffff'
TIME='#00ffff'
DATE='#00ffff'
KEYHL='#00ffff'
BHL='#000000'
RING='#00000000'
INSIDE='#00000000'
VER='#77ff77'
VERRING='#77ff77'
VERINSIDE='#00000000'
WRONG='#ff4444'
WRONGRING='#ff4444'
WRONGINSIDE='#00000000'
import -window root /tmp/lockScreen.png
convert /tmp/lockScreen.png -blur 0x9 /tmp/lockScreen.png
i3lock -e                          \
--inside-color=$INSIDE             \
--ring-color=$RING                 \
--verif-color=$VER                 \
--insidever-color=$VERINSIDE       \
--ringver-color=$VERRING           \
--wrong-color=$WRONG               \
--insidewrong-color=$WRONGINSIDE   \
--ringwrong-color=$WRONGRING       \
--keyhl-color=$KEYHL               \
--bshl-color=$BHL                  \
--line-color=$LINE                 \
--separator-color=$SEPARATOR       \
--layout-color=$LAYOUT             \
--time-color=$TIME                 \
--date-color=$DATE                 \
--clock                            \
--indicator                        \
--time-str="%H:%M:%S"              \
--date-str="%A, %d/%m/%Y"          \
-i /tmp/lockScreen.png
