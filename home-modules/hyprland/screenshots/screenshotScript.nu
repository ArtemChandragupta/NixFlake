def main [ mode:string ] {
  match $mode {
  'window' => {hyprshot -m window -m active -f $"Pictures/( date now | format date '%Y-%m-%d-%H%M%S')-window.png"}
  'screen' => {hyprshot -m output -m active --raw | satty --filename - --output-filename ~/Pictures/$"( date now | format date "%Y-%m-%d-%H%M%S")"-screen.png --copy-command 'wl-copy' --early-exit}
  }
}
