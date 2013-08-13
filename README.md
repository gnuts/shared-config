shared-config
=============

my shared workstation configuration


this are default configurations for i3wm, and a bit of KDE
more default configs will follow

i use this shared-config dir and create some symlinks to the real locations.

example:


    cd ~

    ln -s shared-config/shared-bin shared-bin
    ln -s shared-config/config/dunst .config/dunst
    ln -s shared-config/kde/share/apps/konsole/nuts pastels.colorscheme .kde/share/apps/konsole/nuts pastels.colorscheme


    touch .i3autostart.local

    chmod +x .i3autostart.local
    chmod +x shared-bin/*
    chmod +x .i3/autostart .i3/exitdmenu.sh


now start hacking.

