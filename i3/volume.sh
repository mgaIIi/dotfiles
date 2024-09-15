#!/bin/bash

options="Decrement\nMute\nIncrement"
selected=$(echo -e $options | rofi -dmenu -i -p "" -theme ~/.config/rofi/volume.rasi)
case $selected in
  Decrement)
    pactl set-sink-volume @DEFAULT_SINK@ -10%   
    ;;
  Increment)
    pactl set-sink-volume @DEFAULT_SINK@ +10%
    ;;
  Mute)
    pactl set-sink-mute @DEFAULT_SINK@ toggle
    ;;
esac
