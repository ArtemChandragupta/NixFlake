{ pkgs, config, lib, inputs, ... }:{

programs = {
  hyprland = {
    enable = true;
    package = inputs.hyprland.packages.${pkgs.system}.hyprland;
    xwayland.enable = true;
  };
};

services.dbus.enable = true;

# Enable Display Manager
services.greetd = {
  enable = true;
  settings = {
    default_session = {
      command = "${pkgs.greetd.tuigreet}/bin/tuigreet --remember --greeting 'Welcome to NixOS' --time --time-format '%I:%M %p | %a • %h | %F' --cmd Hyprland";
      user = "greeter";
    };
  };
};

environment.systemPackages = with pkgs; [
  greetd.tuigreet
  
  wofi
  waybar
  grim
  slurp
  wl-clipboard
  imagemagick
  swappy     
  hyprpaper
  hyprland-autoname-workspaces
  
];

}
