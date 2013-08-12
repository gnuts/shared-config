#!/bin/bash
#
# a simple dmenu session script 
#
###

#DMENU='dmenu -i -b -nb #990000 -nf #999999 -sb #000000 -sf #31658C'
DMENU='dmenu -i -nb #990000 -nf #999999 -sb #999999 -sf #000000'
#DMENU='dmenu -i -b'
choice=$(echo -e "logout\nshutdown\nreboot\nsuspend\nhibernate" | $DMENU)

case "$choice" in
  logout)
    i3-msg exit &
    ;;
  shutdown)
    sudo shutdown -h now &
    ;;
  reboot)
    sudo shutdown -r now &
    ;;
  suspend)
    sudo pm-suspend &
    ;;
  hibernate)
    sudo pm-hibernate &
    ;;
esac


