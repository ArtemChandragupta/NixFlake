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
      initial-tool = "crop";
    };
    keybinds = {
      arrow = "a";
    };
    font = {
      family = "stix-two";
    };
    color-palette.palette = [
      "#cc241dff"
      "#fabd2fff"
      "#b16286ff"
      "#83a598ff"
    ];
  };
};

}
