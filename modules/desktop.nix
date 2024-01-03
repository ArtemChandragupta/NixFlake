{ pkgs, config, ... }:
{

programs = {
  hyprland = {
    enable = true;
    xwayland.enable = true;
  };
};

}
