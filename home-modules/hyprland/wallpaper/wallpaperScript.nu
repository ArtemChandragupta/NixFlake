const wallpaperDir = ".wallpapers"

let screenList = wlr-randr
| split row -r '\n'
| where { |it| str starts-with ' ' | $in == false }
| split column -r ' '
| get column1

for $screen in $screenList {
  let currentWallpaper = open $'.cache/swww/($screen)' 
  | split row '/' 
  | last 1 
  | get 0
  | $wallpaperDir + '/' + $in

  let randomWallpaper = ls $wallpaperDir
  | get name
  | where { |it| $it != $currentWallpaper }
  | get (random int ..($in | length | $in - 1))

  swww img -o $screen $randomWallpaper
}
