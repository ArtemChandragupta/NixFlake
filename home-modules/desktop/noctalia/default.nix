{

programs.noctalia = {
  # enable = true;
  systemd.enable = true;
  settings = {
    bar = {
      position = "top";
      margin_edge = 0;

      start = [ "tray" ];
      center = [ "clock" ];
      end = [
        "battery"
        "volume"
        # "network"
        # "bluetooth"
        # "displays"
        # "notifications"
        ];
    };

    general = {
      radius = 10;        # Corner rounding on panels and popups
    };

    ui = {
      font = "Jetbrains mono nerd font";
    };
    theme = {
      mode = "dark";
      source = "builtin";
      builtin = "Gruvbox";
    };
  };
};

}
