{ pkgs, var, ... }:{

services.displayManager.gdm = {
  # enable  = true;
  wayland = true;
};

services.greetd = {
  enable = true;
  settings = {
    default_session = {
      command = "${pkgs.cage}/bin/cage -s -d -- ${pkgs.greetd.gtkgreet}/bin/gtkgreet -c Hyprland &> /tmp/hypland-start.log";
      user    = "greeter";
    };
    initial_session = {
      command = "Hyprland &> /tmp/hypland-start.log";
      user    = "${var.user}";
    };
  };
};

}
