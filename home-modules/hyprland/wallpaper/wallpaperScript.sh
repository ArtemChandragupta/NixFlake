wallpaperDir="./.wallpapers"

for display in $(wlr-randr | awk '/^[^ ]+ / {print $1}'); do
  randomWallpaper=$(fd -e png -e jpg . "$wallpaperDir" | sort -R | head -n 1)
  swww img -o "$display" "$randomWallpaper"
done
