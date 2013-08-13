shared-config
=============

my shared workstation configuration


this are default configurations for i3wm, and a bit of KDE.

more default configs will follow

i use this shared-config dir and create some symlinks to the real locations.

example:


    cd ~

    ln -s shared-config/i3 .i3
    ln -s shared-config/shared-bin shared-bin
    ln -s shared-config/config/dunst .config/dunst
    ln -s shared-config/kde/share/apps/konsole/nuts pastels.colorscheme .kde/share/apps/konsole/nuts pastels.colorscheme


    touch .i3autostart.local

    chmod +x .i3autostart.local
    chmod +x shared-bin/*
    chmod +x .i3/autostart .i3/exitdmenu.sh


install xautolock and dunst

to make the dmenu for shutdown, pm-suspend, etc work:

    addgroup shutdown
    vigr (add users to this group)

    /etc/sudoers.d/shutdownusers:

    %shutdown ALL=(root) NOPASSWD: /sbin/reboot
    %shutdown ALL=(root) NOPASSWD: /sbin/halt
    %shutdown ALL=(root) NOPASSWD: /sbin/shutdown
    %shutdown ALL=(root) NOPASSWD: /usr/sbin/pm-hibernate
    %shutdown ALL=(root) NOPASSWD: /usr/sbin/pm-suspend

completely log out/log in after that.

now start hacking.

