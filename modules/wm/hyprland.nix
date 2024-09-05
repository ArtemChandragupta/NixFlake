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
  grim
  slurp
  imagemagick
  swappy
  wf-recorder
  
  wl-clipboard
  cliphist
  
  hyprpicker

  pwvucontrol
  alsa-utils
];

}
