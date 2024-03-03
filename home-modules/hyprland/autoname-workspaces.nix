{
home.file.".config/hyprland-autoname-workspaces/config.toml".text = ''
version = "1.1.13"

[format]
dedup = true
dedup_inactive_fullscreen = false
delim = " "
client = "{icon}{delim}"
client_active = "{icon}"
workspace = "{id}:{delim}{clients}"
workspace_empty = "{id}:delim}{clients}"
client_dup = "{icon}{counter_sup}{delim}"
client_dup_fullscreen = "[{icon}]{delim}{icon}{counter_unfocused_sup}"
client_fullscreen = "[{icon}]{delim}"

[class]
DEFAULT = ""
"(?i)firefox" = " "
"(?i)kitty" = ""
discord = ""
"(?i)waydroid.*" = "droid"
obsidian = ""
"qalculate-gtk" = ""
libreoffice-calc = ""
libreoffice-impress = ""
libreoffice-startcenter = ""
libreoffice-writer = ""
mpv = ""
nm-connection-editor = ""
org-telegram-desktop = ""
remote-viewer = ""
swappy = ""
telegramdesktop = ""
".*transmission.*" = ""
udiskie = ""
virt-manager = ""
nemo = ""

[exclude]
"" = "^$"

'';
}
