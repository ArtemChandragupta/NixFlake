{ var, ... }:{

services.xserver.displayManager.gdm = {
  enable  = if var.host == "homePC" then true else false;
  wayland = true;
};

services.displayManager.ly = {
  enable = if var.host == "ThinkBook13s" then true else false;
  settings = {
    animation = "doom";
    hide_borders = true;
  };
};

}
