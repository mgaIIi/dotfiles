#!/bin/bash

rm -rf ./alacritty
rm -rf ./dunst
rm -rf ./helix
rm -rf ./hypr
rm -rf ./rofi
rm -rf ./waybar

cp -r ~/.config/alacritty .
cp -r ~/.config/dunst .
cp -r ~/.config/helix .
cp -r ~/.config/hypr .
cp -r ~/.config/rofi .
cp -r ~/.config/waybar .
