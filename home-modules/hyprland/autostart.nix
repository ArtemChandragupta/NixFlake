{ pkgs, ... }:
let
  recolor-border = pkgs.writers.writeNuBin "recolor-border" (builtins.readFile ./recolor-border.nu);
in{

home.packages = [ recolor-border ];

wayland.windowManager.hyprland.extraConfig = ''
  hl.on("hyprland.start", function()
    hl.exec_cmd("kitty")
    hl.exec_cmd("recolor-border")
    hl.exec_cmd("waybar")
    hl.exec_cmd("Telegram -startintray")
  end)
'';

}
