{ pkgs, ... }:
let
  recorderScript = pkgs.writers.writeNuBin "recorderScript"
    (builtins.readFile ./recorderScript.nu);
  screenshotScript = pkgs.writers.writeNuBin "screenshotScript"
    (builtins.readFile ./screenshotScript.nu);
in{

home.packages = with pkgs; [
  grim
  wf-recorder

  recorderScript
  screenshotScript
];

programs.satty = {
  enable = true;
  settings = {
    general = {
      fullscreen   = true;
      early-exit   = true;
      copy-command = "wl-copy";
    };
  };
};

wayland.windowManager.hyprland.settings = {
  bind = [
    "     , PRINT, exec, screenshotScript window"
    "SUPER, PRINT, exec, screenshotScript screen"
    " CTRL, PRINT, exec, screenshotScript redact"

    "$mainMod, U, exec, recorderScript"
  ];
  windowrule = [
    "match:class com.gabm.satty, animation popin"
  ];
};

}
