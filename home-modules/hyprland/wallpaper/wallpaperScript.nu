let screenList = wlr-randr
| split row -r '\n'
| where { |it| str starts-with ' ' | $in == false }
| split column -r ' '
| get column1

for $screen in $screenList {
    swww img -o $screen (
        ls -f .wallpaper
        | get name
        | where { |it| $it != (open $'.cache/swww/($screen)') }
        | get (random int ..($in | length | $in - 1))
    )
}
