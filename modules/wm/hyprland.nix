{ pkgs, var, inputs, ... }:{

programs.hyprland = {
  enable  = true;
  package = if var.init 
    then pkgs.hyprland
    else inputs.hyprland.packages.${pkgs.system}.hyprland;
  xwayland.enable = true;
};

nix.settings = {
  substituters = [ "https://hyprland.cachix.org" ];
  trusted-public-keys = [
    "hyprland.cachix.org-1:a7pgxzMz7+chwVL3/pzj6jIBMioiJM7ypFP8PwtkuGc="
  ];
};

environment.variables.EDITOR = "hx";

environment.systemPackages = with pkgs; [
  totem # gnome video
  loupe # gnome photo
  evince # gnome pdf
  baobab # gnome disk analizer
  nautilus # gnome file manager
  snapshot # gnome camera
  gnome-software
  gnome-calculator
  gnome-disk-utility
  weather

  wl-clipboard
  cliphist

  hyprpicker

  pwvucontrol
  alsa-utils
];

}
