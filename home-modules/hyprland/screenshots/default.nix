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
    "     , PRINT, exec, screenshotScript window"
    "SUPER, PRINT, exec, screenshotScript screen"
    " CTRL, PRINT, exec, screenshotScript redact"

    "$mainMod, U, exec, recorderScript"
  ];
  windowrule = [
    "match:class com.gabm.satty, fullscreen 1"
    "match:class com.gabm.satty, animation popin"
  ];
};

}
