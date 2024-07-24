{ pkgs, inputs, ... }:{

programs = {
  hyprland = {
    enable  = true;
    package = inputs.hyprland.packages.${pkgs.system}.hyprland;
    xwayland.enable = true;
  };
};

nix.settings = {
  substituters = [ "https://hyprland.cachix.org" ];
  trusted-public-keys = [
    "hyprland.cachix.org-1:a7pgxzMz7+chwVL3/pzj6jIBMioiJM7ypFP8PwtkuGc="
  ];
};

services.dbus.enable = true;

environment.systemPackages = with pkgs; [
  grim
  slurp
  imagemagick
  swappy
  wl-screenrec
  
  wl-clipboard
  cliphist
  
  hyprpicker
];

}
