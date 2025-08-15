def handle [event: string] {
    if $event starts-with "activelayout" {
        let kbd_data = hyprctl devices -j | from json | get keyboards
        let layout = $kbd_data | where main == true | get active_keymap.0

        let color = if $layout == "English (US)" {
            0xff83A598
        } else {
            0xffB16286
        }

        hyprctl keyword general:col.active_border $color
    }
}

def main [] {
    let socket_path = $"($env.XDG_RUNTIME_DIR)/hypr/($env.HYPRLAND_INSTANCE_SIGNATURE)/.socket2.sock"
    
    socat -U - $"UNIX-CONNECT:($socket_path)" | lines | each { |line| handle $line } | ignore
}
