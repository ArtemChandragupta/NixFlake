{ pkgs, config, ... }:
{

programs = {
  hyprland = {
    enable = true;
    xwayland.enable = true;
  };
};

services.dbus.enable = true;

}
