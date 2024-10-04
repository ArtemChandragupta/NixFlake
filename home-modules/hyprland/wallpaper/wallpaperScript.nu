if ('.cache/swww' not-in (ls .cache | get name)) {mkdir .cache/swww} # Ensure dir exist

for $screen in (hyprctl -j monitors | from json | get name) { # For each active screen

  match ($screen in (ls -s .cache/swww | get name)) { # Is screen wllppr already set?
    true  => {newWlppr}
    false => {initWlppr}
  }

  def newWlppr [] { # If yes, set random wlppr different from current based on full path
    ls -f .wallpaper
    | get name
    | path expand
    | where {|link| $link != (open $'.cache/swww/($screen)')}
    | get (random int ..($in | length | $in - 1))
    | swww img -o $screen $in
  }

  def initWlppr [] { # If no, set random wlppr
    ls -f .wallpaper
    | get name
    | get (random int ..($in | length | $in - 1))
    | swww img -o $screen $in
  }
}
