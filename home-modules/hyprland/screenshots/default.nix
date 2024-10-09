{ pkgs, ... }:
let
  recorderScript = pkgs.writers.writeNuBin "recorderScript"
    (builtins.readFile ./recorderScript.nu);
  screenshotScript = pkgs.writers.writeNuBin "screenshotScript"
    (builtins.readFile ./screenshotScript.nu);
in{

home.packages = with pkgs; [
  grim
  satty
  wf-recorder

  recorderScript
  screenshotScript
];

wayland.windowManager.hyprland.settings = {
  bind = [
    ", PRINT,         exec, screenshotScript window"
    "$mainMod, PRINT, exec, screenshotScript screen"
    "CTRL, PRINT,     exec, screenshotScript redact"

    "$mainMod, U, exec, recorderScript"
  ];
  windowrulev2 = [
    "fullscreen, class:(com.gabm.satty)"
    "float, class:(com.gabm.satty)"
  ];
};

}
