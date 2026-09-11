if (ps | where name == wl-screenrec | is-empty) {
    let name = $"($env.home)/Pictures/(date now | format date '%Y-%m-%d-%H%M%S')-record.mp4"

    let screen = try {
        hyprctl -j monitors | from json | where focused | get name.0
    } catch {
        niri msg -j focused-output | from json | get name
    }

    notify-send "Record Start"
    wl-screenrec --ffmpeg-encoder-options "profile=main" -o $screen -f $name

} else {
    notify-send "Record Stop"
    pkill wl-screenrec
}
