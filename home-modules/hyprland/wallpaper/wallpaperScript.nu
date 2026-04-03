let screen = hyprctl -j monitors | from json | where focused == true | get name | first
let cache  = $'.cache/awww/($screen)'

mkdir .cache/awww # Ensure cache dir exist
touch $cache      # Ensure cache file exist

let wlppr = ls .wallpaper | get name | path expand # Get names and resolve symlinks
| where not (open $cache | str contains $it) | shuffle | first   # Choose random, but not current

awww img -o $screen $wlppr
