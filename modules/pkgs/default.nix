{ pkgs, ... }:{

imports = [
  ./apps.nix
  ./fonts.nix
  ./games.nix
  ./utils.nix
];

services.flatpak.enable = true;
environment.systemPackages = [ pkgs.gnome-software ];

}
