#!/bin/sh
cat /dev/null > /tmp/dunstHistory.txt
echo "$(python $HOME/.config/polybar/modules/dunstHistory.py)" > /tmp/dunstHistory.txt
kitty -e less /tmp/dunstHistory.txt
