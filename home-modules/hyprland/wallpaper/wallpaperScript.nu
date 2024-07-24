def setWallpaper [] {
const wallpaperDir = ".wallpapers"

let screenList = wlr-randr
  | split row -r '\n'
  | where {|it| str starts-with ' ' | $in == false}
  | split column -r ' '
  | get column1

let randomWallpaper = ls $wallpaperDir 
  | get name
  | get (random int ..($in | length | $in - 1))

  for $it in $screenList { swww img -o $it $randomWallpaper }  
}

setWallpaper
