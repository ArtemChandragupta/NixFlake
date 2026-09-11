{ var, config, ... }:{

services.greetd = {
  enable = true;
  settings = {
    default_session = {
      command = "${config.programs.niri.package}/bin/niri-session > /dev/null 2>&1";
      user = "${var.user}";
    };
  };
};

}
