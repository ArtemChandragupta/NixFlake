{

wayland.windowManager.hyprland.settings = {
  monitor = [
    "eDP-1,1920x1200,0x0,1"
    "HDMI-A-1,1920x1080,0x1600,1"
  ];
  bind = [
    "$mainMod SHIFT, up,   movecurrentworkspacetomonitor, HDMI-A-1"
    "$mainMod SHIFT, down, movecurrentworkspacetomonitor, eDP-1"
  ];
};

}
