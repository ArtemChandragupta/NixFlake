def main [ direction:int ] {
  mut Value = hyprctl monitors # Get current rotation
  | lines
  | find -r transform
  | parse '{key} {value}'
  | get value.0
  | into int

  $Value = ($Value + $direction) mod 4 # Get new value (0,1,2,3)

  if $Value == 0 { # If screen is not rotated, set it as default
    hyprctl keyword monitor eDP-1,1920x1200,0x0,1
  } else { # If not, rotate
    hyprctl $'keyword monitor eDP-1,preferred,auto,1,transform,($Value)'
  }

  if not (ps | where name == swww-daemon | is-empty) {
    swww kill # Kill swww - it will be broken after rotate
  }
  swww init # start swww
}
