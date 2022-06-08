#!/bin/sh
echo " 直 "
case "${1}" in
    --left)
        killall polybar
        polybar aggregate
    ;;
esac
