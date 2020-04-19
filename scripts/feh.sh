#!/bin/bash

dir=~/Pictures/Wallpapers
wallpaper="$(ls $dir | shuf -n 1)"

feh --randomize --bg-fill "$dir/$wallpaper" 