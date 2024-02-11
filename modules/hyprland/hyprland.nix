{ pkgs, config, lib, inputs, ... }:{

programs = {
  hyprland = {
    enable = true;
    package = inputs.hyprland.packages.${pkgs.system}.hyprland;
    xwayland.enable = true;
  };
};

services.dbus.enable = true;

environment.systemPackages = with pkgs; [
  wofi
  swww
  waypaper
  waybar
  grim
  slurp
  wl-clipboard
  imagemagick
  swappy
  hyprland-autoname-workspaces
];

}
