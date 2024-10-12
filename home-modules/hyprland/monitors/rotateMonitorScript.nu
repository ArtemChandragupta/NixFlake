def main [ direction:int ] {
  let rotation = hyprctl -j monitors | from json | where name == eDP-1 | get transform.0
  let newRotation = ($rotation + $direction) mod 4 # Get new value for rotation (0,1,2,3)
  
  match $newRotation { # Rotate screen, or set it as default if not rotated
    0 => {hyprctl keyword monitor eDP-1,1920x1200,0x0,1}
    _ => {hyprctl $'keyword monitor eDP-1,preferred,auto,1,transform,($newRotation)'}
  }

  do -i {swww kill} | swww init # Reload daemon (using deprecated keyword)

}
