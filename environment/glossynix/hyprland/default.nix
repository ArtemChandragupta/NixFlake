{ pkgs, config, lib, inputs, ... }:{
home-manager.users.artem = {

wayland.windowManager.hyprland = {
  enable      = true;
  settings    = { };
  package     = inputs.hyprland.packages.${pkgs.system}.hyprland;
  plugins = [
    inputs.hyprland-plugins.packages.${pkgs.system}.borders-plus-plus
  ];
  extraConfig = ''

monitor=eDP-1,2560x1600,0x0,1

exec-once = waybar
exec-once = dunst 
exec-once = kitty
exec-once = hyprpaper

env = XCURSOR_SIZE,24
env = XDG_CURRENT_DESKTOP, Hyprland
env = XDG_SESSION_TYPE, wayland
env = XDG_SESSION_DESKTOP, Hyprland

input {
    kb_layout    = us,ru
    kb_variant   =
    kb_model     =
    kb_options   = grp:caps_toggle
    kb_rules     =
    follow_mouse = 1
    touchpad {
        natural_scroll = false
        drag_lock      = true
    }
    sensitivity  = 0
}

general {
    gaps_in             = 5
    gaps_out            = 10
    border_size         = 1
    col.active_border   = rgb(504945) 
    col.inactive_border = rgb(504945)
    layout              = dwindle
    allow_tearing       = false
}

decoration {
    rounding = 10

    blur {
        enabled  = yes
        size     = 3
        passes   = 1
        vibrancy = 0.1696
    }
    
    active_opacity   = 1
    inactive_opacity = 0.98

    drop_shadow = yes
   
    shadow_range = 7
    shadow_render_power = 3
    col.shadow = rgba(1a1a1aee)
}

animations {
    enabled = true

    bezier = myBezier, 0.05, 0.9, 0.1, 1.00

    animation = windows, 1, 7, default, slide
    animation = windowsOut, 1, 7, default, slide  # popin 80%
    animation = border, 1, 10, default
    animation = borderangle, 1, 8, default
    animation = fade, 1, 7, default
  # animation = workspaces, 1, 6, default, sidefadevert
}

dwindle {
    pseudotile = true
    preserve_split = true
}

master {
    new_is_master = true
}

gestures {
    workspace_swipe = true
    workspace_swipe_invert = true
}

misc {
    force_default_wallpaper   = 0
    disable_hyprland_logo     = true
    disable_splash_rendering  = true
    layers_hog_keyboard_focus = true
    animate_manual_resizes    = true
    enable_swallow            = true
    swallow_regex             = ^(kitty)$    
}

plugin {
  borders-plus-plus {
    add_borders = 1 

    col.border_1 = rgb(1d2021)
    col.border_2 = rgb(2222ff)

    # -1 means "default" as in the one defined in general:border_size
    border_size_1 = 4
    border_size_2 = -1

    natural_rounding = no
  }
}

device:epic-mouse-v1 {
    sensitivity = -0.5
}

windowrule = float, ^(gnome-calculator)$
windowrulev2 = nomaximizerequest, class:.*

####################################################################################
#                                                                                  #
#                                    KEYBINDS                                      #
#                                                                                  #
####################################################################################

$mainMod = SUPER
$altMod = ALT

bind = $mainMod, T, exec, kitty
bind = $mainMod, Q, killactive,
bind = $mainMod, L, exec, lf
bind = $mainMod, M, exit,
bind = $mainMod, F, fullscreen
bind = $mainMod, V, togglefloating,
bind = $mainMod, R, exec, wofi --show drun
bind = $mainMod, P, pseudo, 
bind = $mainMod, J, togglesplit,
bind = , XF86Calculator, exec, gnome-calculator

bind = $mainMod SHIFT, W, exec, pkill waybar && waybar  
bind = $mainMod, W, exec, waybar

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

bind = $mainMod, mouse_down, workspace, e+1
bind = $mainMod, mouse_up,   workspace, e-1

bindm = $mainMod, mouse:272, movewindow
bindm = $mainMod, mouse:273, resizewindow

bind = $altMod SHIFT, right, resizeactive, 20 0
bind = $altMod SHIFT, left, resizeactive, -20 0
bind = $altMod SHIFT, up, resizeactive, 0 -20
bind = $altMod SHIFT, down, resizeactive, 0 20

bind =, XF86MonBrightnessUp,   exec, brightnessctl set +5%
bind =, XF86MonBrightnessDown, exec, brightnessctl set 5%-
bind =, XF86AudioRaiseVolume,  exec, wpctl set-volume -l 1.4 @DEFAULT_AUDIO_SINK@ 5%+
bind =, XF86AudioLowerVolume,  exec, wpctl set-volume -l 1.4 @DEFAULT_AUDIO_SINK@ 5%- 
bind =, XF86AudioMute,         exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle

# You need to create ~/Screenshots
bind = $mainMod, Y, exec, grim -g "$(slurp)" - | convert - -shave 1x1 PNG:- | swappy -f -
bind = $mainMod SHIFT, Y, exec, grim -| swappy -f -
    '';
  };

};
}
