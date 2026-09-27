let nameBase = $'($env.Home)/Pictures/(date now | format date "%Y-%m-%d-%H%M%S")'
let screen = try {
  hyprctl -j monitors | from json | where focused | get name.0
} catch {
  niri msg -j focused-output | from json | get name
}

def main [mode:string] {
  match $mode {
    'window' => {window} # Save and copy active window
    'screen' => {screen} # Save and copy active screen
    'redact' => {redact} # Save or copy active screen redacted by satty
  }
}

def window [] {
  let name    = $'($nameBase)-window.png'
  let gaps    = hyprctl getoption general:gaps_in -j | from json | get css | split words | first | into int
  let window  = hyprctl -j activewindow | from json
  let padding = $window | get at size | $'($in.0.0 - $gaps),($in.0.1 - $gaps) ($in.1.0 + 2 * $gaps)x($in.1.1 + 2 * $gaps)'

  match ($window | get fullscreen) { # Is active window in fullscreen?
    0 => {grim -g $padding $name} # If no,  take screenshot with padding to catch wlppr
    _ => {grim             $name} # If yes, take screenshot
  }

  cat $name | wl-copy
  notify-send -i $name 'Window screenshot' 'Saved and copied'
}

def screen [] {
  let name   = $'($nameBase)-screen.png'

  grim -o $screen $name
  cat $name | wl-copy
  notify-send -i $name 'Fullscreen screenshot' 'Saved and copied'
}

def redact [] {
  let name   = $'($nameBase)-redact.png'

  grim -o $screen -
  | satty --filename - --output-filename $name
}
