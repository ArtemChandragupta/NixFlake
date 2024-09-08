{

services.displayManager.autoLogin = {
  enable = true;
  user = "artem";
};
systemd.services = {
  "getty@tty1".enable = false;
  "autovt@tty1".enable = false;
};

}
