#!/bin/zsh

killall waybar

if [[ $USER == "george" ]]
then
	waybar -c ~/.config/waybar/config & -s ~/.config/waybar/styles.css
else
	waybar &
fi
