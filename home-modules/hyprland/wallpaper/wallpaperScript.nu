let screenList = hyprctl monitors #Get list  of active screens
| find Monitor
| parse '{device} {name} {id}'
| get name

for $screen in $screenList {
    swww img -o $screen ( # For each screen
        if ( # Is the wlppr initialized for each screen?
            ls -s .cache/swww
            | where name == $screen
            | is-empty
        ) { # If no, set random wlppr
            ls -f .wallpaper
            | get name
            | get (random int ..($in | length | $in - 1))
        } else { # If yes, set random wlppr different from current based on full path
            ls -f .wallpaper
            | get name
            | path expand
            | where {|link| $link != (open $'.cache/swww/($screen)')}
            | get (random int ..($in | length | $in - 1))
        }
    )
}
