match (ps | where name == wl-screenrec | is-empty) { # Is recorder inactive?
  true  => {recordStart}
  false => {recordStop }
}

def recordStart [] {
  let name = $'($env.Home)/Pictures/(date now | format date "%Y-%m-%d-%H%M%S")-record.mp4'
  let screen = hyprctl -j monitors | from json | where focused == true | get name | first

  notify-send Record Start
  | wl-screenrec --ffmpeg-encoder-options "profile=main" -o $screen -f $name
}

def recordStop [] {
  notify-send Record Stop
  | pkill wl-screenrec
}
