{

wayland.windowManager.hyprland.settings = {

"$mainMod" = "SUPER";
"$altMod" = "ALT";

bind = [
  "$mainMod, Q, killactive,"
  "$mainMod, Delete, exit,"
  "$mainMod, F, fullscreen"
  "$mainMod, V, togglefloating,"
  "$mainMod, J, togglesplit,"

  "$mainMod, T, exec, kitty"
  "$mainMod, C, exec, hyprpicker -a"
  "$mainMod, L, exec, hyprlock"
  "$mainMod, N, exec, swaync-client -t -sw"

  "$mainMod, R, exec, rofi-appgrid"
  "$mainMod, G, exec, open-dialect"
  "$mainMod, B, exec, open-resourceMonitor"
  "CTRL,     X, exec, open-clip"
  "$mainMod SHIFT, W, exec, wallpaperScript"
  " , XF86Calculator, exec, open-calc"

  "$mainMod, W, exec, nu -c 'try {pkill waybar} catch {waybar}'"

  "$mainMod, left,  movefocus, l"
  "$mainMod, right, movefocus, r"
  "$mainMod, up,    movefocus, u"
  "$mainMod, down,  movefocus, d"
  "$mainMod CTRL, left,  movewindow, l"
  "$mainMod CTRL, right, movewindow, r"
  "$mainMod CTRL, up,    movewindow, u"
  "$mainMod CTRL, down,  movewindow, d"
  "$altMod SHIFT, right, resizeactive, 20 0"
  "$altMod SHIFT, left,  resizeactive, -20 0"
  "$altMod SHIFT, up,    resizeactive, 0 -20"
  "$altMod SHIFT, down,  resizeactive, 0 20"

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

  "$altMod, XF86MonBrightnessUp,   exec, brightnessctl --device='platform::kbd_backlight' set +1"
  "$altMod, XF86MonBrightnessDown, exec, brightnessctl --device='platform::kbd_backlight' set 1-"
  ", XF86MonBrightnessUp,   exec, brightnessctl set +5%"
  ", XF86MonBrightnessDown, exec, brightnessctl set 5%-"
  ", XF86AudioRaiseVolume,  exec, wpctl set-volume -l 1.4 @DEFAULT_AUDIO_SINK@ 5%+"
  ", XF86AudioLowerVolume,  exec, wpctl set-volume -l 1.4 @DEFAULT_AUDIO_SINK@ 5%-"
  ", XF86AudioMute,    exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
  ", XF86AudioMicMute, exec, amixer set Capture toggle"
];

bindm = [
  "bindm = $mainMod, mouse:272, movewindow"
  "bindm = $mainMod, mouse:273, resizewindow"
];

};

}
