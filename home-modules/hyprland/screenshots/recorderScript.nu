def main [] {
  let process = ps | where name == wf-recorder # Get recorder process id

  if ($process | is-empty) { # If the record is inactive, notify and start it
    notify-send --action="recrod start" .
    | wf-recorder -f ~/Pictures/$"( date now | format date "%Y-%m-%d-%H%M%S")"-record.mp4
  } else { # If the record is active, kill and notify
    $process | get pid.0 | kill $in
    | notify-send --action="recrod stop" .
  }
}
