{ var, ... }:{

services.udisks2.enable = true; # For usb automount

home-manager.users.${var.user}.services.udiskie = { 
  enable = true; # Usb automount and tray icon
};

}
