let screen = hyprctl -j monitors | from json | where focused == true
let width  = $screen.width.0
let height = $screen.height.0

def main [mode?:string] {
  match $mode { # Focus cursor on floating thing on the active screen
    'center' => {hyprctl dispatch movecursor ($width / 2)     ($height / 2)}
    'right'  => {hyprctl dispatch movecursor ($width / 4 * 3) ($height / 2)}
    'left'   => {hyprctl dispatch movecursor ($width / 4)     ($height / 2)}
  }
}
