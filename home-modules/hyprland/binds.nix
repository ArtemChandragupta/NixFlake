{ lib, ... }:
let
  lua = lib.generators.mkLuaInline;
  
  dsp = {
    exec  = cmd: lua ''hl.dsp.exec_cmd("${cmd}")'';
    close = lua "hl.dsp.window.close()";
    exit  = lua "hl.dsp.exit()";
    float = lua ''hl.dsp.window.float({ action = "toggle" })'';
    fullscreen = lua "hl.dsp.window.fullscreen()";
    layout = msg: lua ''hl.dsp.layout("${msg}")'';
    focus  = dir: lua ''hl.dsp.focus({ direction = "${dir}" })'';
    swap   = dir: lua ''hl.dsp.window.swap({ direction = "${dir}" })'';
    focusWorkspace  = ws: lua ''hl.dsp.focus({ workspace = "${toString ws}" })'';
    moveToWorkspace = ws: lua ''hl.dsp.window.move({ workspace = "${toString ws}" })'';
    drag = lua "hl.dsp.window.drag()";
    resizemouse = lua "hl.dsp.window.resize()";
    resize_h = dir_x: lua ''hl.dsp.window.resize({ x = ${dir_x}, y = 0, relative = true })'';
    resize_v = dir_y: lua ''hl.dsp.window.resize({ x = 0, y = ${dir_y}, relative = true })'';
  };

  bind     = keys: dispatcher: { _args = [keys dispatcher]; };
  bindOpts = keys: dispatcher: opts: { _args = [keys dispatcher opts]; };

  workspaceBinds = lib.concatMap (i:
    let key = toString (lib.mod i 10);
    in [
      (bind "SUPER + ${key}" (dsp.focusWorkspace i))
      (bind "SUPER + SHIFT + ${key}" (dsp.moveToWorkspace i))
    ]
  ) (lib.range 1 10);
  
in {
wayland.windowManager.hyprland.settings.bind = [
  (bind "SUPER + Q" dsp.close)
  (bind "SUPER + Delete" dsp.exit)
  (bind "SUPER + F" dsp.fullscreen)
  (bind "SUPER + V" dsp.float)
  (bind "SUPER + J" (dsp.layout "togglesplit"))

  (bind "SUPER + T" (dsp.exec "kitty"))
  (bind "SUPER + C" (dsp.exec "hyprpicker -a"))
  (bind "SUPER + L" (dsp.exec "hyprlock"))
  (bind "SUPER + N" (dsp.exec "swaync-client -t -sw"))
  (bind "SUPER + R" (dsp.exec "rofi-appgrid"))
  (bind "SUPER + B" (dsp.exec "open-resourceMonitor"))
  (bind "CTRL  + X" (dsp.exec "open-clip"))
  (bind "SUPER + Z" (dsp.exec "zen-mode"))
  (bind "SUPER + W" (dsp.exec "wallpaperScript"))
  (bind "XF86Calculator" (dsp.exec "kitty -o background_opacity=0.95 -e 'numbat'"))
  (bind "SUPER + SHIFT + W" (dsp.exec "nu -c 'try {pkill waybar} catch {waybar}'"))

  # Screenshots and screen record
  (bind "PRINT" (dsp.exec "screenshotScript window"))
  (bind "SUPER + PRINT" (dsp.exec "screenshotScript screen"))
  (bind "CTRL  + PRINT" (dsp.exec "screenshotScript redact"))
  (bind "SUPER + U" (dsp.exec "recorderScript"))

  # Focus windows
  (bind "SUPER + left"  (dsp.focus "left"))
  (bind "SUPER + right" (dsp.focus "right"))
  (bind "SUPER + up"    (dsp.focus "up"))
  (bind "SUPER + down"  (dsp.focus "down"))

  # Swap windows
  (bind "SUPER + CTRL + left"  (dsp.swap "left"))
  (bind "SUPER + CTRL + right" (dsp.swap "right"))
  (bind "SUPER + CTRL + up"    (dsp.swap "up"))
  (bind "SUPER + CTRL + down"  (dsp.swap "down"))

  # Resize windows
  (bind "ALT + SHIFT + up"    (dsp.resize_v "-20"))
  (bind "ALT + SHIFT + down"  (dsp.resize_v  "20"))
  (bind "ALT + SHIFT + right" (dsp.resize_h  "20"))
  (bind "ALT + SHIFT + left"  (dsp.resize_h "-20"))

  # Monitors
  (bind "SUPER + SHIFT + up"    (dsp.exec "movecurrentworkspacetomonitor, HDMI-A-1"))
  (bind "SUPER + SHIFT + down"  (dsp.exec "movecurrentworkspacetomonitor, eDP-1"))
  (bind "SUPER + SHIFT + right" (dsp.exec "rotateMonitorScript 1"))
  (bind "SUPER + SHIFT + left"  (dsp.exec "rotateMonitorScript 3"))
  
  # Brightness
  (bindOpts "XF86MonBrightnessUp"   (dsp.exec "brightnessctl set +5%") { locked = true; })
  (bindOpts "XF86MonBrightnessDown" (dsp.exec "brightnessctl set 5%-") { locked = true; })
  (bindOpts "ALT + XF86MonBrightnessUp"   (dsp.exec "brightnessctl --device='platform::kbd_backlight' set +1") { locked = true; })
  (bindOpts "ALT + XF86MonBrightnessDown" (dsp.exec "brightnessctl --device='platform::kbd_backlight' set 1-") { locked = true; })

   # Volume keys
  (bindOpts "XF86AudioRaiseVolume" (dsp.exec "wpctl set-volume -l 1.4 @DEFAULT_AUDIO_SINK@ 5%+") { locked = true; repeating = true; })
  (bindOpts "XF86AudioLowerVolume" (dsp.exec "wpctl set-volume -l 1.4 @DEFAULT_AUDIO_SINK@ 5%-") { locked = true; repeating = true; })
  (bindOpts "XF86AudioMute" (dsp.exec "wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle") { locked = true; })
  (bindOpts "XF86AudioMicMute" (dsp.exec "amixer set Capture toggle") { locked = true; })

  # Mouse move/resize
  (bindOpts "SUPER + mouse:272" dsp.drag        { mouse = true; })
  (bindOpts "SUPER + mouse:273" dsp.resizemouse { mouse = true; })
] ++ workspaceBinds;

}
