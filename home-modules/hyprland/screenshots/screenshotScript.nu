let nameBase = $'($env.Home)/Pictures/(date now | format date "%Y-%m-%d-%H%M%S")'

def main [mode:string] {
  match $mode {
    'window' => {window} # Save and copy active window
    'screen' => {screen} # Save and copy active screen
    'redact' => {redact} # Save or copy active screen redacted by satty
  }
}

def window [] {
  let name    = $'($nameBase)-window.png'
  let window  = hyprctl -j activewindow | from json
  let padding = $window | get at size | $'($in.0.0 - 5),($in.0.1 - 5) ($in.1.0 + 10)x($in.1.1 + 10)'

  match ($window | get fullscreen) { # Is active window in fullscreen?
    0 => {grim -g $padding $name} # If no,  take screenshot with padding to catch wlppr
    _ => {grim             $name} # If yes, take screenshot
  }

  cat $name | wl-copy
  notify-send -i $name 'Window screenshot' 'Saved and copied'
}

def screen [] {
  let name   = $'($nameBase)-screen.png'
  let screen = hyprctl -j monitors | from json | where focused == true | get name.0

  grim -o $screen $name
  cat $name | wl-copy
  notify-send -i $name 'Fullscreen screenshot' 'Saved and copied'
}

def redact [] {
  let name   = $'($nameBase)-redact.png'
  let screen = hyprctl -j monitors | from json | where focused == true | get name.0
  
  grim -o $screen - 
  | satty --filename - --output-filename $name --copy-command 'wl-copy' --early-exit
}
