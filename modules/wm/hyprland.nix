{ pkgs, ... }:{

programs.hyprland = {
  enable  = true;
  xwayland.enable = true;
};

environment.variables.EDITOR = "nvim";

environment.systemPackages = with pkgs; [
  loupe  # Gnome photo
  papers # Gnome pdf
  baobab # Gnome disk analizer
  clapper  # New gnome video
  nautilus # Gnome file manager
  snapshot # Gnome camera
  gnome-disk-utility
  weather
  dconf-editor # GTK settings - remove buttons

  soteria # Polkit agent

  hyprpicker
];

}
