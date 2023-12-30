{ config, pkgs, inputs, ... }:
{
  imports =
    [
      ./hardware-configuration.nix
      inputs.home-manager.nixosModules.default
      ./modules/kernel.nix
      ./modules/system.nix
      ./modules/sound.nix
      ./modules/locales.nix
      ./modules/pkgs.nix
    ];

  boot = { 
    loader = {
      systemd-boot.enable = true;
      efi.canTouchEfiVariables = true;
    };
  };

  networking.hostName = "nixos";
  networking.networkmanager.enable = true;

  services = { 
    getty.autologinUser = "artem";
    mpd.enable = true;
    gvfs.enable = true;
    udisks2.enable = true;
    auto-cpufreq = { 
      enable = true;
      settings = {
        battery =  { 
          governor = "powersave";
          turbo = "never";
        };
        charger = {
          governor = "powersave";
          turbo = "auto";
        };
      };
    };
  };

  users.users.artem = {
    isNormalUser = true;
    description = "artem";
    extraGroups = [ "networkmanager" "wheel" "audio" "video" "input" "libvirtd" ];
    packages = with pkgs; [];
  };

  home-manager = {
    extraSpecialArgs = { inherit inputs; };
    users = {
      "artem" = import ./home.nix;
    };
  };

  programs = {
    dconf.enable = true;
    hyprland = {
      enable = true;
      xwayland.enable = true;
    };
    virt-manager.enable = true;
  };
  virtualisation.libvirtd.enable = true;

  # users.defaultUserShell = pkgs.zsh;
  programs.zsh = {
    enable = true;
    ohMyZsh.enable = true;
    ohMyZsh.theme = "agnoster";
  };

  xdg.portal = {
    enable = true;
    wlr.enable = true;
  };

  powerManagement.enable = true;

  system.stateVersion = "23.11";
}
