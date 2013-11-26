#!/bin/bash

e="exec --no-startup-id"
t="$e x-terminal-emulator"

# go to workspace 1
# create 4 shells as tiles


# is there no other way to setup workspaces like this!?

i3-msg "workspace 1;layout splith;"
i3-msg "$t;$t"
sleep 1;
i3-msg "focus parent"
i3-msg "split vertical"
i3-msg "$t"
sleep 1;
i3-msg "split horizontal";
i3-msg "$t"
sleep 1

# go to workspace 2
# set workspace 2 to tabbed
# start my stuff

i3-msg "workspace 2"
i3-msg "layout tabbed"
i3-msg "$e smb4k"
i3-msg "$e firefox"
i3-msg "$e kontact"
i3-msg "$e keepass2"

# need to find a way to wait for these programs, then switch workspace....

# go to workspace 3
# set to tabbed
# start more stuff
#i3-msg workspace 3
#i3-msg layout tabbed

