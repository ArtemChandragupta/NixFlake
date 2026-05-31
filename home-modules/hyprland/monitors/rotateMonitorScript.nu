def main [ direction:int ] {
  let rotation = hyprctl -j monitors | from json | where name == eDP-1 | get transform.0
  let newRotation = ($rotation + $direction) mod 4 # Get new value for rotation (0,1,2,3)
  
  match $newRotation { # Rotate screen, or set it as default if not rotated
    0 => {hyprctl eval $"hl.monitor {mode = "1920x1200", output = "eDP-1", position = "0x0", scale = "1"}"}
    2 => {hyprctl eval $"hl.monitor {mode = "preferred", output = "eDP-1", position = "auto", scale = "1", transform = '($newRotation)' }"}
    # _ => {hyprctl $'keyword monitor eDP-1,preferred,auto,1,transform,($newRotation)'}
  }

  do -i {awww kill} | awww init # Reload daemon (using deprecated keyword)
}
