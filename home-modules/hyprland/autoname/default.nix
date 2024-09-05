{ pkgs, ... }:{

home = {
  packages = [ pkgs.hyprland-autoname-workspaces ];
  file."./.config/hyprland-autoname-workspaces/config.toml".source = ./autoname.toml;
};

wayland.windowManager.hyprland.settings.exec-once = [
  "hyprland-autoname-workspaces"
];

}
