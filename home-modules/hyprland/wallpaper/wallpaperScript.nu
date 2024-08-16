let screenList = hyprctl monitors #Get list  of active screens
| find Monitor
| split column ' '
| get column2

for $screen in $screenList {
    swww img -o $screen (
        if ( # Is the wlppr initialized for each screen?
            ls -s .cache/swww
            | where name == $screen
            | is-empty
        ) { # If no, set any wlppr
            ls -f .wallpaper
            | get name
            | get (random int ..($in | length | $in - 1))
        } else { # If yes, set wlppr different from current
            ls -f .wallpaper
            | where name != (open $'.cache/swww/($screen)')
            | get name
            | get (random int ..($in | length | $in - 1))
        }
    )
}
