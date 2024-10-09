let process = ps | where name == wf-recorder # Get recorder process id

match ($process | is-empty) { # Is recorder inactive?
  true  => {recordStart}
  false => {recordStop }
}

def recordStart [] {
  let name = $'($env.Home)/Pictures/(date now | format date "%Y-%m-%d-%H%M%S")-record.mp4'
  let screen = hyprctl -j monitors | from json | where focused == true | get name | first

  notify-send Record Start 
  | wf-recorder -o $screen -f $name
}

def recordStop [] {
  notify-send Record Stop 
  | $process | get pid | first | kill $in
}
