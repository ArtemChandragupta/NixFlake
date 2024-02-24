{
wayland.windowManager.hyprland.settings = {

"$mainMod" = "SUPER";
"$altMod" = "ALT";

bind = [

  "$mainMod, T, exec, kitty"
  "$mainMod, Q, killactive,"
  "$mainMod, L, exec, lf"
  "$mainMod, M, exit,"
  "$mainMod, F, fullscreen"
  "$mainMod, R, exec, rofi-menu"
  "$mainMod, V, togglefloating,"
  "$mainMod, G, exec, wofi --show drun"
  "$mainMod, P, pseudo," 
  "$mainMod, J, togglesplit,"
  ", XF86Calculator, exec, gnome-calculator"

  "$mainMod SHIFT, W, exec, pkill waybar"
  "$mainMod, W, exec, waybar"

  "$mainMod, left, movefocus, l"
  "$mainMod, right, movefocus, r"
  "$mainMod, up, movefocus, u"
  "$mainMod, down, movefocus, d"

  "$mainMod, 1, workspace, 1"
  "$mainMod, 2, workspace, 2"
  "$mainMod, 3, workspace, 3"
  "$mainMod, 4, workspace, 4"
  "$mainMod, 5, workspace, 5"
  "$mainMod, 6, workspace, 6"
  "$mainMod, 7, workspace, 7"
  "$mainMod, 8, workspace, 8"
  "$mainMod, 9, workspace, 9"
  "$mainMod, 0, workspace, 10"

  "$mainMod SHIFT, 1, movetoworkspace, 1"
  "$mainMod SHIFT, 2, movetoworkspace, 2"
  "$mainMod SHIFT, 3, movetoworkspace, 3"
  "$mainMod SHIFT, 4, movetoworkspace, 4"
  "$mainMod SHIFT, 5, movetoworkspace, 5"
  "$mainMod SHIFT, 6, movetoworkspace, 6"
  "$mainMod SHIFT, 7, movetoworkspace, 7"
  "$mainMod SHIFT, 8, movetoworkspace, 8"
  "$mainMod SHIFT, 9, movetoworkspace, 9"
  "$mainMod SHIFT, 0, movetoworkspace, 10"

  "$altMod SHIFT, right, resizeactive, 20 0"
  "$altMod SHIFT, left, resizeactive, -20 0"
  "$altMod SHIFT, up, resizeactive, 0 -20"
  "$altMod SHIFT, down, resizeactive, 0 20"
  "$mainMod, mouse_down, workspace, e+1"
  "$mainMod, mouse_up,   workspace, e-1"

  "$mainmod SHIFT, L, movewindow, mon:HDMI-A-1"
  "$mainmod SHIFT, K, focusmonitor, HDMI-A-1"
  "$mainmod SHIFT, J, focusmonitor, mon:HDMI-A-1"
  "$mainmod SHIFT, B,movecurrentworkspacetomonitor, HDMI-A-1"
    
  ", XF86MonBrightnessUp,   exec, brightnessctl set +5%"
  ", XF86MonBrightnessDown, exec, brightnessctl set 5%-"
  ", XF86AudioRaiseVolume,  exec, wpctl set-volume -l 1.4 @DEFAULT_AUDIO_SINK@ 5%+"
  ", XF86AudioLowerVolume,  exec, wpctl set-volume -l 1.4 @DEFAULT_AUDIO_SINK@ 5%-"
  ", XF86AudioMute,         exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
  
  # You need to create ~/Screenshots
 ''$mainMod, Y, exec, grim -g "$(slurp)" - | convert - -shave 1x1 PNG:- | swappy -f -''
  "$mainMod SHIFT, Y, exec, grim -| swappy -f -"

];

bindm = [
  "bindm = $mainMod, mouse:272, movewindow"
  "bindm = $mainMod, mouse:273, resizewindow"
];

};
}
