{ pkgs, inputs, ... }:{

programs = {
  hyprland = {
    enable = true;
    package = inputs.hyprland.packages.${pkgs.system}.hyprland;
    xwayland.enable = true;
  };
};

services.dbus.enable = true;

environment.systemPackages = with pkgs; [
  swww
  waybar
  grim
  slurp
  wl-clipboard
  wf-recorder
  cliphist
  imagemagick
  cachix
  swappy
  hyprpicker
];

}
