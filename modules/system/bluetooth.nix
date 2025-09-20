{ var, ... }:{

hardware.bluetooth.enable = true;
services.blueman.enable   = true;
home-manager.users.${var.user}.services.blueman-applet.enable = true;

}
