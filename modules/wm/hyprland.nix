{ pkgs, ... }:{

programs.hyprland = {
  enable  = true;
  xwayland.enable = true;
};

environment.variables.EDITOR = "hx";

environment.systemPackages = with pkgs; [
  loupe  # Gnome photo
  papers # Gnome pdf
  baobab # Gnome disk analizer
  clapper  # New gnome video
  nautilus # Gnome file manager
  snapshot # Gnome camera
  gnome-calculator
  gnome-disk-utility
  weather
  dconf-editor

  soteria # Polkit agent

  hyprpicker
];

}
