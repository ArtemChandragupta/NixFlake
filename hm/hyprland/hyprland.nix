{ config, pkgs, ... }: {
  wayland.windowManager.hyprland = {
    enable = true;
    settings = { };
    extraConfig = ''

monitor=eDP-1,2560x1600,0x0,1

exec-once = hyprpaper & waybar 

# Source a file (multi-file configs)
# source = ~/.config/hypr/myColors.conf

env = XCURSOR_SIZE,24

# For all categories, see https://wiki.hyprland.org/Configuring/Variables/
input {
    kb_layout = us,ru
    kb_variant =
    kb_model =
    kb_options = grp:caps_toggle
    kb_rules =

    follow_mouse = 1

    touchpad {
        natural_scroll = false
    }

    sensitivity = 0
}

general {
    gaps_in = 2
    gaps_out = 5
    border_size = 0
    col.active_border = rgb(d5c4a1) 
    col.inactive_border = rgb(d5c4a1)

    layout = dwindle

    allow_tearing = false
}

decoration {
    rounding = 5

    blur {
        enabled = false
        size = 3
        passes = 1
        
        vibrancy = 0.1696
    }
    
    active_opacity= 1
    inactive_opacity= 1

    drop_shadow = false
   
    shadow_range = 4
    shadow_render_power = 3
    col.shadow = rgba(1a1a1aee)
}

animations {
    enabled = true

    bezier = myBezier, 0.05, 0.9, 0.1, 1.05

    animation = windows, 1, 7, myBezier
    animation = windowsOut, 1, 7, default, popin 80%
    animation = border, 1, 10, default
    animation = borderangle, 1, 8, default
    animation = fade, 1, 7, default
    animation = workspaces, 1, 6, default, slidevert
}

dwindle {
    pseudotile = true
    preserve_split = true
}

master {
    new_is_master = true
}

gestures {
    workspace_swipe = false
}

misc {
    force_default_wallpaper = 0
    disable_hyprland_logo = true
    background_color = rgb(d5c4a1)
}

# Example per-device config
# See https://wiki.hyprland.org/Configuring/Keywords/#per-device-input-configs for more
device:epic-mouse-v1 {
    sensitivity = -0.5
}

windowrule = float, ^(gnome.gnome-calculator)$
windowrulev2 = nomaximizerequest, class:.*

bind = , XF86MonBrightnessUp   , exec , brightnessctl set +5%
bind = , XF86MonBrightnessDown , exec , brightnessctl set 5%-

binde =, XF86AudioRaiseVolume, exec, wpctl set-volume -l 1.4 @DEFAULT_AUDIO_SINK@ 5%+
binde =, XF86AudioLowerVolume, exec, wpctl set-volume -l 1.4 @DEFAULT_AUDIO_SINK@ 5%- 
bind =, XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle

$mainMod = SUPER

bind = $mainMod, Q, exec, kitty
bind = $mainMod, C, killactive,
bind = $mainMod, L, exec, lf
bind = $mainMod, M, exit,
bind = $mainMod, F, fullscreen
bind = $mainMod, V, togglefloating,
bind = $mainMod, R, exec, rofi -show drun
bind = $mainMod, P, pseudo, 
bind = $mainMod, J, togglesplit,
bind = , XF86Calculator, exec, gnome-calculator

bind = $mainMod, left, movefocus, l
bind = $mainMod, right, movefocus, r
bind = $mainMod, up, movefocus, u
bind = $mainMod, down, movefocus, d

bind = $mainMod, 1, workspace, 1
bind = $mainMod, 2, workspace, 2
bind = $mainMod, 3, workspace, 3
bind = $mainMod, 4, workspace, 4
bind = $mainMod, 5, workspace, 5
bind = $mainMod, 6, workspace, 6
bind = $mainMod, 7, workspace, 7
bind = $mainMod, 8, workspace, 8
bind = $mainMod, 9, workspace, 9
bind = $mainMod, 0, workspace, 10

# Move active window to a workspace with mainMod + SHIFT + [0-9]
bind = $mainMod SHIFT, 1, movetoworkspace, 1
bind = $mainMod SHIFT, 2, movetoworkspace, 2
bind = $mainMod SHIFT, 3, movetoworkspace, 3
bind = $mainMod SHIFT, 4, movetoworkspace, 4
bind = $mainMod SHIFT, 5, movetoworkspace, 5
bind = $mainMod SHIFT, 6, movetoworkspace, 6
bind = $mainMod SHIFT, 7, movetoworkspace, 7
bind = $mainMod SHIFT, 8, movetoworkspace, 8
bind = $mainMod SHIFT, 9, movetoworkspace, 9
bind = $mainMod SHIFT, 0, movetoworkspace, 10

# Example special workspace (scratchpad)
bind = $mainMod, S, togglespecialworkspace, magic
bind = $mainMod SHIFT, S, movetoworkspace, special:magic

# Scroll through existing workspaces with mainMod + scroll
bind = $mainMod, mouse_down, workspace, e+1
bind = $mainMod, mouse_up, workspace, e-1

# Move/resize windows with mainMod + LMB/RMB and dragging
bindm = $mainMod, mouse:272, movewindow
bindm = $mainMod, mouse:273, resizewindow

# screenshots
bind = CTRL, Y, exec, grim -g "$(slurp)" $(xdg-user-dir PICTURES)/Screenshots/$(date +'%s_grim.png')
    '';
  };
}
