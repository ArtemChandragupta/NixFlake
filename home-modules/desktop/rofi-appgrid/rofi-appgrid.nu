let state = ps | where name == rofi | is-not-empty

if $state {
  pkill rofi
} else {
  rofi -show drun -theme ~/.config/rofi/launchers/rofi-appgrid/style.rasi
}
