#!/bin/zsh

MONITOR="DP-1"
WALLPAPER_DIR="/home/george/.config/hypr/Wallpapers"


files=("$WALLPAPER_DIR"/*(.N) "$WALLPAPER_DIR"/*(@N))

if (( ${#files} == 0 )); then
	printf "No files found in" "$WALLPAPER_DIR" >&2
	exit 1
fi
random_file="${files[RANDOM % ${#files[@]} + 1]}"

cp $random_file ~/Pictures/current_wp.png

hyprctl hyprpaper wallpaper "${MONITOR}, ${random_file}"
