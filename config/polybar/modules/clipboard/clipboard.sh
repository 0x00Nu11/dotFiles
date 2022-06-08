#!/bin/sh
echo ""
case "${1}" in
    --left)
        gpaste-client ui
    ;;
    --right)
        gpaste-client empty
    ;;
esac
