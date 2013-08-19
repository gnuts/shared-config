#!/bin/bash


LOCALAUTOSTART=~/.i3autostart.local

# configure shared environment

echo "setup..."
chmod +x ~/shared-bin/setup-shared-config.sh && ~/shared-bin/setup-shared-config.sh
echo "starting up all the good stuff"


#xset dpms 300 600 900 


# setup screenlocker
#exec xautolock -corners -0-0 -time 1 -locker "i3lock -c 111111" -notify 15 -notifier "notify-send -t 15000 -u critical 'locking screen in 15 seconds'"

# this will blank the screen a short time before it will be locked. gives you time to counteract :)
#exec xautolock -corners -0-0 -time 3 -locker "i3lock -c 111111" -notify 60 -notifier "xset s activate"
#xautolock -corners -0-0 -time 3 -locker "i3lock -c 111111" -notify 60 -notifier "notify-lock.sh" &
xautolock -corners ---- -time 3 -locker "i3lock -c 111111" -notify 60 -notifier "notify-lock.sh" &



# start some programs here

# enable Numlock, no matter what
numlockx

# i love owncloud :)
owncloud &

# enable KDE bloat
# i have no idea why i need --check, but it only works this way:
kded4 --check
kded4
qdbus org.kde.kded /kded loadSecondPhase
qdbus org.kde.kded /kded loadModule powerdevil
qdbus org.kde.kded /kded loadModule networkmanagement

# restart akonadi
nepomukserver &
akonadictl start 


# now start some frontends
#kmix replaced by i3status bar and pactl/pa-vol.sh
#kmix &
#smb4k &


# kill knotify4 if it is running
killall -9 knotify4

echo got here
#
# now start local programs if local file exists

if [ -x "$LOCALAUTOSTART" ]; then
    echo "starting stuff from local autostart script"
    $LOCALAUTOSTART 
else
    echo "no local autostart found ($LOCALAUTOSTART)"
fi
