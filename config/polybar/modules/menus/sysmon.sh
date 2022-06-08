#!/bin/sh
echo "﫵"
case "${1}" in
    --left)
        killall polybar
        polybar sysmon
    ;;
esac
