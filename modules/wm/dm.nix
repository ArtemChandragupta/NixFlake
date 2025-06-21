{ pkgs, ... }:{

services.displayManager.gdm = {
  # enable  = true;
  wayland = true;
};

services.greetd = {
  enable = true;
  settings = {
    default_session = {
      command = "${pkgs.cage}/bin/cage -s -d -- ${pkgs.greetd.gtkgreet}/bin/gtkgreet -c Hyprland &> /tmp/hypland-start.log";
      # command = "${pkgs.greetd.tuigreet}/bin/tuigreet --remember --remember-session --cmd Hyprland";
      # command = "${pkgs.cage}/bin/cage -s -d -- ${pkgs.greetd-mini-wl-greeter}/bin/greetd-mini-wl-greeter -c Hyprland";
      user = "greeter";
    };
    initial_session = {
      command = "Hyprland &> /tmp/hypland-start.log";
      user = "artem";
    };
  };
};

}
