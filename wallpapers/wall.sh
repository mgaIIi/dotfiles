#!/bin/sh

wallpath="/home/milo/Desktop/milo/thispc/dotfiles/wallpapers/arch.png"

curl -o sub.jpg $1
magick -size 2880x1800 xc:"#1e1e2e" base.png 
magick sub.jpg -bordercolor "#BDBEDE" -border 10x10 sub.jpg
magick base.png sub.jpg -gravity north -geometry +0+500  -composite "$wallpath"
rm base.png sub.jpg
