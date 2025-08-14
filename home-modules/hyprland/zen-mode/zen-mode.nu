let rounding = hyprctl getoption decoration:rounding -j | from json | get int

match ($rounding == 10) { # Is rounding standart?
  true  => {remove-distraction}
  false => {restore-order     }
}

def remove-distraction [] {
  try {pkill waybar}
  hyprctl keyword general:gaps_out    0
  hyprctl keyword general:gaps_in     0
  hyprctl keyword decoration:rounding 0
  hyprctl keyword general:border_size 8
}

def restore-order [] {
  hyprctl reload
  try {pkill waybar} catch {waybar}
}
