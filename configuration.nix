{ plgs, config, inputs, ... }:{

imports = [
  ./hardware-configuration.nix
  inputs.home-manager.nixosModules.default
  ./modules/system.nix
  ./modules/sound.nix
  ./modules/locales.nix
  ./modules/pkgs.nix
  ./modules/usb.nix
  ./modules/power.nix
  ./modules/boot.nix # + kernel and autologin artem
  ./modules/virtualisation.nix
  ./modules/flatpak.nix # + xdg settings
  ./modules/hyprland.nix # + display manager
  ./modules/networking.nix
  ./modules/user.nix
  ./environment/glossynix
];

home-manager = {
  extraSpecialArgs = { inherit inputs; };
  users = {
    "artem" = import ./home-modules/home.nix;
  };
};

system.stateVersion = "23.11";

}
