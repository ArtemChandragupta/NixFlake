{ config, pkgs, inputs, ... }:
{
  imports = [
    ./hardware-configuration.nix
    inputs.home-manager.nixosModules.default
    ./modules/kernel.nix
    ./modules/system.nix
    ./modules/sound.nix
    ./modules/locales.nix
    ./modules/pkgs.nix
    ./modules/usb.nix
    ./modules/power.nix
    ./modules/boot.nix # + autologin artem
    ./modules/virtualisation.nix
    ./modules/flatpak.nix
    ./modules/xdg.nix
    ./modules/desktop.nix
    ./modules/networking.nix
    ./modules/user.nix
    ./modules/display_manager.nix
  ];

  home-manager = {
    extraSpecialArgs = { inherit inputs; };
    users = {
      "artem" = import ./home.nix;
    };
  };

  system.stateVersion = "23.11";
}
