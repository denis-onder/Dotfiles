#!/bin/bash

# Start mpd
mpd

# Clear mpd queue
mpc clear

# Add YouTube live stream to mpd queue
mpc add $(youtube-dl -g WsDyRAPFBC8)

# Play stream
mpc play