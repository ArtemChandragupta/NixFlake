{ var, ... }:{

imports = [
  ./boot.nix
  ./flatpak.nix
  ./locales.nix
  ./networking.nix
  ./sound.nix
  ./system.nix
  ./usb.nix
  ./users.nix
] ++ ( if var.init 
  then [ ]
  else [ ./virtual.nix ]
);

}
