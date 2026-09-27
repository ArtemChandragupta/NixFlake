let screen = try {
  hyprctl -j monitors | from json | where focused | get name.0
} catch {
  niri msg -j focused-output | from json | get name
}
let version = awww -V | split row " " | last
let cache  = $'.cache/awww/($version)/($screen)'

mkdir .cache/awww # Ensure cache dir exist
touch $cache      # Ensure cache file exist

let wlppr = ls .wallpaper | get name | path expand # Get names and resolve symlinks
| where not (open $cache | str contains $it) | shuffle | first # Choose random, but not current

awww img -o $screen $wlppr
