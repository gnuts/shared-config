#!/bin/bash
#
###

layoutdir=~/.screenlayout 

DMENU='dmenu -i -nb #990000 -nf #999999 -sb #999999 -sf #000000'
#choice=$(echo -e "notebook\nworkstation\nreboot\nsuspend\nhibernate" | $DMENU)

choice=$((cd $layoutdir && ls -1|perl -pe 's/\.sh$//') | $DMENU)

script="$layoutdir/${choice}.sh"
if [ -x "$script" ]; then
    "$script"
fi
