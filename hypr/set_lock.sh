#!/bin/zsh

img_path="$(waypaper --list | jq -r '.[0].wallpaper')"

# new_path="$(echo "$img_path" | sed -E 's|^/[^/]+/[^/]+||')"
# echo "$img_path"
# echo "$new_path"
cp $img_path ~/Pictures/current_wp.png

hyprlock
