const wallpaperDir = ".wallpapers"

let current = source $'~/($wallpaperDir)/.current.txt'

def check [generated] { if $generated == $curent }

let screenList = wlr-randr
  | split row -r '\n'
  | where {|it| str starts-with ' ' | $in == false}
  | split column -r ' '
  | get column1

let randomNumber = ls $wallpaperDir 
  | sort-by size 
  | random int 1..($in | length | $in - 1)
  | 



def setWallpaper [] [] {
  swww img -o ""
}
