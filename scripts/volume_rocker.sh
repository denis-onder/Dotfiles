#!/bin/bash

if [ $1 = "up" ]
then
  notify-send "Increased mpd volume by 10%"
  mpc volume +10
elif [ $1 = "down" ]
then
  notify-send "Decreased mpd volume by 10%"
  mpc volume -10
elif [ $1 = "min" ]
then
  notify-send "Muted mpd"
  mpc volume 0
elif [ $1 = "max" ]
then
  notify-send "Unmuted mpd"
  mpc volume 100
else
  echo "Incorrect argument provided."
  echo "Usage: volume_rocker <up/down/min/max>"
fi
