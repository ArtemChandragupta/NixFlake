{ pkgs, ... }:
let
  recorderScript = pkgs.writers.writeNuBin "recorderScript"
    (builtins.readFile ./recorderScript.nu);
  screenshotScript = pkgs.writers.writeNuBin "screenshotScript"
    (builtins.readFile ./screenshotScript.nu);
in{

home.packages = with pkgs; [
  hyprshot
  satty
  wf-recorder

  recorderScript
  screenshotScript
];

wayland.windowManager.hyprland.settings = {
  bind = [
    ", PRINT, exec, screenshotScript window"
    "CTRL, PRINT, exec, screenshotScript screen"
    "$mainMod, U, exec, recorderScript"
  ];
  windowrulev2 = [
    "fullscreen, class:(com.gabm.satty)"
  ];
};

}
