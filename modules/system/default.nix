{ var, ... }:{

imports = [
  ./bluetooth.nix
  ./boot.nix
  ./locales.nix
  ./networking.nix
  ./nixpkgs.nix
  ./sound.nix
  ./system.nix
  ./usb.nix
  ./users.nix
] ++ ( if var.init 
  then [ ]
  else [ ./virtual.nix ]
);

}
