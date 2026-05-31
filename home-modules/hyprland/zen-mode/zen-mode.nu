let rounding = hyprctl getoption decoration:rounding -j | from json | get int

match ($rounding == 10) { # Is rounding standart?
  true  => {remove-distraction}
  false => {restore-order     }
}

def remove-distraction [] {
  try {pkill waybar}
  hyprctl eval 'hl.config({ general    = { gaps_out    = 0 } })'
  hyprctl eval 'hl.config({ general    = { gaps_in     = 0 } })'
  hyprctl eval 'hl.config({ decoration = { rounding    = 0 } })'
  hyprctl eval 'hl.config({ general    = { border_size = 8 } })'
}

def restore-order [] {
  hyprctl reload
  try {pkill waybar} catch {waybar}
}
