{ pkgs, ... }:{

environment.systemPackages = [
  pkgs.sunshine # Server for remote  streaming
  pkgs.stash    # No comments
];

services.displayManager.autoLogin = { # Autologin
  enable = true;
  user = "artem";
};
systemd.services = { # Autologin workaround
  "getty@tty1".enable = false;
  "autovt@tty1".enable = false;
};

}
