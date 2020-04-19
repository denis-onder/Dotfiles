#!/bin/bash

# README: You can download pomodoro-timer from the link below
# https://github.com/denis-onder/pomodoro-timer

CODE=$(ps -A | grep code | awk '{ print $1 }')
TIMER=$(ps -A | grep pomodoro-timer | awk '{ print $1 }')

handle_start() {
    if [ -z "$TIMER" ]; then
        echo "Start timer"
        pomodoro-timer start &
    fi
}

if [ -n "$CODE" ]; then
    echo "Running"
    handle_start
else
    echo "Not running"
    if [ -n "$TIMER" ]; then
        echo "Kill timer"
        pkill pomodoro-timer
        notify-send "Pomodoro timer stopped."
    fi
fi
