let nameBase = $'($env.Home)/Pictures/(date now | format date "%Y-%m-%d-%H%M%S")'

def main [mode:string] {
  match $mode {
    'window' => {window}
    'screen' => {screen}
    'redact' => {redact}
  }
}

def window [] { # Save and copy active window
  let name = $'($nameBase)-window.png'
  let activeWindow = hyprctl -j activewindow | from json

  match ($activeWindow | get fullscreen) { # Make shot, add padding if not in fullscreen
    0 => {grim -g ($activeWindow | get at size | flatten | $'($in.0 - 5),($in.1 - 5) ($in.2 + 10)x($in.3 + 10)') $name}
    _ => {grim $name}
  }
  cat $name | wl-copy
  notify-send -i $name 'Window screenshot' 'Saved and copied'
}

def screen [] { # Save and copy active screen
  let name = $'($nameBase)-screen.png'
  let activeScreen = hyprctl -j monitors | from json | where focused == true | get name.0

  grim -o $activeScreen $name
  cat $name | wl-copy
  notify-send -i $name 'Fullscreen screenshot' 'Saved and copied'
}

def redact [] { # Save or copy active screen redacted by satty
  let name = $'($nameBase)-redact.png'
  let activeScreen = hyprctl -j monitors | from json | where focused == true | get name.0

  grim -o $activeScreen - 
  | satty --filename - --output-filename $name --copy-command 'wl-copy' --early-exit
}
