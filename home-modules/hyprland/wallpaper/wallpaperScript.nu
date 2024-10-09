let screen = hyprctl -j monitors | from json | where focused == true | get name | first
let cache  = $'.cache/swww/($screen)'

mkdir .cache/swww # Ensure cache dir exist
touch $cache      # Ensure cache file exist

let wlppr = ls .wallpaper | get name | path expand # Get names and resolve symlinks
| where ($it != (open $cache)) | shuffle | first   # Choose random, but not current

swww img -o $screen $wlppr
