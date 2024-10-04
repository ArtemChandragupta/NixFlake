let process = ps | where name == wf-recorder # Get recorder process id

match ($process | is-empty) { # Is recorder inactive?
  true  => {recordStart} # If yes, start recorder and notify
  false => {recordStop}  # If no, stop recorder and notify
}

def recordStart [] {
  let activeScreen = hyprctl -j monitors # Get active screen
  | from json
  | where focused == true
  | get name.0

  notify-send Record Start 
  | wf-recorder -o $activeScreen -f ~/Pictures/$"( date now | format date "%Y-%m-%d-%H%M%S")"-record.mp4
}

def recordStop [] {
  notify-send Record Stop | $process | get pid.0 | kill $in
}
