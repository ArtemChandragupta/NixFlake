def check_layout [kbd: string] {
    let kbd_data = hyprctl devices -j | from json | get keyboards
    let target_kbd = $kbd_data | where name == $kbd

    if not ($target_kbd | is-empty) {
        let layout = $target_kbd | get active_keymap.0
        
        let kitty_conf = if $layout == "English (US)" {
            $"($env.HOME)/.config/kitty/kitty.conf"
        } else {
            $"($env.HOME)/.config/kitty/theme-ru.conf"
        }

        # recolor based on language
        kitty @ set-colors --all $kitty_conf
    } else {
        notify-send "Target keyboard for hx-writer not found"
    }
}

def handle [event: string, kbd: string] {
    # for each layout change it checks if recoloring is needed
    if $event starts-with "activelayout" { check_layout $kbd}

    # if overlay window with hx closed it kills socat and resets kitty
    if ( kitty @ ls | from json | get tabs.0 | get windows.0 | length ) == 1 {
        kitty @ set-font-size 0
        kitty @ set-background-opacity --toggle 1
        exit
    }
}

def main [file: string, kbd: string] {
    # listening to hyprland UNIX socket
    let socket_path = $"($env.XDG_RUNTIME_DIR)/hypr/($env.HYPRLAND_INSTANCE_SIGNATURE)/.socket2.sock"

    # launching overlay with hx, ignoring it's output
    # next commands start after hx launch in background!
    kitty @ launch --cwd current --type=overlay hx $file | ignore

    # setting kitty for pleasant work with text
    kitty @ set-font-size 16
    kitty @ set-background-opacity 1

    # initial layout check to recolor based on current language
    check_layout $kbd

    # launch socket listening in the background terminal
    # ignoring it's output and errors
    socat err> /dev/null -U - $"UNIX-CONNECT:($socket_path)" | lines | each { |line| handle $line $kbd } | ignore
}
