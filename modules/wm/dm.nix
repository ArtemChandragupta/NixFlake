{ pkgs, var, ... }:{

services.greetd = {
  enable = true;
  settings = {
    default_session = {
      command = "${pkgs.cage}/bin/cage -s -d -- ${pkgs.gtkgreet}/bin/gtkgreet -c start-hyprland &> /tmp/hypland-start.log";
      user    = "greeter";
    };
    initial_session = {
      command = "start-hyprland &> /tmp/hypland-start.log";
      user    = "${var.user}";
    };
  };
};

}
